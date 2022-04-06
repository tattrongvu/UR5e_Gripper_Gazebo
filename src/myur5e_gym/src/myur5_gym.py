#! /usr/bin/env python3
import sys
import copy
from copy import deepcopy
import timeit
import numpy as np
from numpy import random

import rospy
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg
from gazebo_msgs.msg import ModelState
from gazebo_msgs.srv import SpawnModel, GetModelState, DeleteModel, SetModelState
from geometry_msgs.msg import Pose, Point, Quaternion
from std_srvs.srv import Empty

class myur5e_vision:
  def __init__(self,image_topic='/myur5e/overview/overview_image_raw', \
                resize = False, \
                image_size=(256,256)):

    self.topic = image_topic
    self.bridge = cv_bridge.CvBridge()
    self.image_sub = rospy.Subscriber(self.topic, Image, self._image_callback)
    self.resize = resize
    self.image_size = image_size
    self._image = None

  def _image_callback(self,msg):
    try:
      # BEGIN BRIDGE
      img = self.bridge.imgmsg_to_cv2(msg,desired_encoding='bgr8')
      if self.resize:
        img = cv2.resize(img, self.image_size, interpolation = cv2.INTER_AREA)
      self._image = img
    except cv_bridge.CvBridgeError as e:
      print(e)

  def get_image(self):
    return self._image

class myur5e_gym:
  def __init__(self, vision_obs = False, num_obj=3,arm_name='arm', gripper_name = 'gripper', reward_type='sparse', render=True, verbose=False):

    #============Init var===========
    self.vision_obs = vision_obs
    self.arm_name = arm_name
    self.gripper_name = gripper_name
    self.num_obj = num_obj
    self.wrist_topic = '/myur5e/wrist_camera/wrist_image_raw'
    self.over_topic = '/myur5e/overview/overview_image_raw'

    self.reward_type = reward_type
    self.done=False
    self.render=render
    self.verbose=verbose
    self.goal_tolerance = 0.05
    self.gripper_extra_length = 0.15
    self.desired_goal = [0,0,0]

    #============INIT ROSPY============
    rospy.init_node('myur5e_gym',anonymous=True)
    rospy.loginfo("Starting GYM Node!")
    self.rate = rospy.Rate(10)
    rospy.on_shutdown(self.cleanup)

    #=============VISION OBSERVATION=============
    if self.vision_obs:
      self.wrist_cam = myur5e_vision(image_topic = self.wrist_topic, resize=True)
      self.over_cam = myur5e_vision(image_topic = self.over_topic, resize=True)
    
    #=============INIT MOVEIT=============
    moveit_commander.roscpp_initialize(sys.argv)
    self.robot = moveit_commander.RobotCommander()
    self.scene = moveit_commander.PlanningSceneInterface()

    #=============MOVE GROUP=============
    self.arm = moveit_commander.MoveGroupCommander(self.arm_name)
    self.grp = moveit_commander.MoveGroupCommander(self.gripper_name)
    ##self.arm.set_pose_reference_frame('/base_link')
    self.arm.set_goal_position_tolerance(0.02)
    self.arm.set_goal_orientation_tolerance(0.05)

    #end_effector_link
    self.ee_link = self.arm.get_end_effector_link()

    #=============SPAWN OBJECTS=============
    try:
      rospy.wait_for_service('/gazebo/spawn_sdf_model')
      self.spawn_model_client = rospy.ServiceProxy('/gazebo/spawn_sdf_model', SpawnModel)
      rospy.wait_for_service('/gazebo/delete_model')
      self.delete_model_client = rospy.ServiceProxy('/gazebo/delete_model', DeleteModel)
      rospy.wait_for_service('/gazebo/get_model_state')
      self.get_obj_pos_client = rospy.ServiceProxy('/gazebo/get_model_state', GetModelState)
      rospy.wait_for_service('/gazebo/set_model_state')
      self.set_state_client = rospy.ServiceProxy('/gazebo/set_model_state', SetModelState)
    except rospy.ServiceException as e:
      print("Service call failed: {}".format(e))
    
    self.spawn_track = False
    self.spawn_room_x_high= 0.25
    self.spawn_room_x_low= -0.48
    self.spawn_room_y_high= 0.65
    self.spawn_room_y_low= -0.65
    self.spawn_room_z_high = 0.65
    self.spawn_room_z_low = 0.15

    self.obj_prefix='box'
    self.table_name="mytable"
    self.target_name = "mytarget"
    self.tcp_name ="mytcp"
    self.world_name = 'world'
    self.obj_name_list=[(self.obj_prefix+str(i)) for i in range(self.num_obj)]

    self.box_path = '/home/trong/Desktop/MASTER_THESIS/ROS_Lab/noetic/my_noetic_ws/src/myur5e/myur5e_description/urdf/objects/mybox.urdf.xacro'
    self.target_path = '/home/trong/Desktop/MASTER_THESIS/ROS_Lab/noetic/my_noetic_ws/src/myur5e/myur5e_description/urdf/objects/mytarget.urdf.xacro'
    self.tcp_path = '/home/trong/Desktop/MASTER_THESIS/ROS_Lab/noetic/my_noetic_ws/src/myur5e/myur5e_description/urdf/objects/mytcp.urdf.xacro'

    #======Action space=======
    self.act_dim = 3
    self.action_low = [-1,-1,-1]
    self.action_high = [1,1,1]
    self.output_low= [-0.05,-0.05,-0.05]
    self.output_high= [0.05,0.05,0.05]
    self.moveit_step_resolution = 0.01
    self.minimum_movement_thres = 0.001

    #=======================INIT WORLD=============================
    try:
      rospy.wait_for_service('/gazebo/reset_world')
      self.reset_world_client = rospy.ServiceProxy('/gazebo/reset_world', Empty)
      self.reset_world_client()
    except rospy.ServiceException as e:
      print("Service call failed: {}".format(e))
    self.rate.sleep()
    self._spawn_obj()

  def step(self,action):
    #ACTION [dx,dy,dz,d]
    #d (0.3,0.8)cm
    #x,y,z (m)(0,0.7)
    #POSITION CONTROLLER action = (x,y,z,d)
    #send action to robot

    ##MOVE ROBOT ARM
    _action = self._scale_action(action)
    if self._check_valid_action(_action):
      plan, _ = self._moveit_plan(_action)
      self.arm.execute(plan)

    next_state = self._get_obs()
    reward = self._compute_reward()
    #print("Robot State: ",self.robot.get_current_state())
    
    return next_state, reward, self.done

  #============================================
  def _compute_reward(self):
    if self.vision_obs:
      return self._vision_reward()
    else:
      return self._sim_reward()

  def reset(self):
    
    random.seed(random.randint(0,1000))
    #RESAMPLE ALL TARGET AND OBJECTS
    self.arm.set_named_target('start')
    self.arm.go(wait=True)
    #self._delete_obj()
    self._sample_obj_state()
    self._sample_target_state()
    self.rate.sleep()

    self._update_desired_goal()

    return self._get_obs()

  def _update_desired_goal(self):
    try:
      target = self.get_obj_pos_client(self.target_name, 'world').pose.position
      self.desired_goal = [target.x,target.y,target.z]
    except rospy.ServiceException as e:
      print("Service call failed: {}".format(e))

  #=========================================================================================================
  def _get_obs(self):
    #Position of gripper
    #self.rate.sleep()
    self.current_pose = self.arm.get_current_pose(self.ee_link).pose
    #=====================TCP==============
    # if self.verbose:
    #   state_msg = ModelState()
    #   state_msg.model_name = self.tcp_name
    #   state_msg.reference_frame = self.world_name
    #   _possition = self.current_pose.position
    #   _pose=Pose(position=Point(_possition.x,_possition.y,_possition.z-self.gripper_extra_length),orientation=Quaternion(0,0,0,0))
    #   state_msg.pose = _pose
    #   try:
    #     self.set_state_client(state_msg)
    #   except rospy.ServiceException as e:
    #     print("Service call failed: {}".format(e))
    #=====================TCP==============
    
    gripper_pos=[self.current_pose.position.x,self.current_pose.position.y,self.current_pose.position.z,\
                self.current_pose.orientation.w, self.current_pose.orientation.x,\
                self.current_pose.orientation.y,self.current_pose.orientation.z]
    obs=[gripper_pos]
    
    #==================GOAL===================
    achieved_goal = [self.current_pose.position.x,self.current_pose.position.y,self.current_pose.position.z]
    desired_goal = self.desired_goal

    #=================VISION OBS=============
    if self.vision_obs:
      over_img = self.over_cam.get_image()
      wrist_img = self.wrist_cam.get_image()
      vision_obs=[over_img,wrist_img]
    else:
      vision_obs=[None,None]

    state_dict ={"observation":obs,"desired_goal":desired_goal,"achieved_goal":achieved_goal, "vision_obs":vision_obs}
      
    return state_dict
  
  #=========================================================================================================
  def _scale_action(self, action):
    #input in scale [-1,1]
    #SCALE ACTION to the appropiate with moveit
    _action=action.copy()
    for i in range(self.act_dim):
      input_range=self.action_high[i]-self.action_low[i]
      scale_range=self.output_high[i]-self.output_low[i]
      _action[i]=scale_range*(_action[i]-self.action_low[i])/input_range
      _action[i]+=self.output_low[i]
    return _action

  def _check_valid_action(self,action):
    diff=np.sqrt(action[0]**2+action[1]**2+action[2]**2)
    if diff < self.minimum_movement_thres:
      print("Invalid: ",action)
      return False
    else:
      return True

  #================GYM COMPONENT===============
  #USE FOR DDPG+HER IMPLEMENTATION
  def compute_reward(self, achieved_goal, goal, info):
    assert achieved_goal.shape == goal.shape
    d = np.linalg.norm(goal_a - goal_b, axis=-1)

    if self.reward_type == "sparse":
      return -(d > self.distance_threshold).astype(np.float32)
    else:
      return -d
  #============================================

  def _moveit_plan(self,action):
    current_pose = self.arm.get_current_pose().pose
    self.waypoints = []
    wpose = deepcopy(current_pose)
    wpose.position.x += action[0]
    wpose.position.y += action[1]
    wpose.position.z += action[2]
    self.waypoints.append(deepcopy(wpose))

    plan, fraction = self.arm.compute_cartesian_path(self.waypoints, eef_step=self.moveit_step_resolution,\
                                                      jump_threshold=3.0, avoid_collisions=True)
    return plan, fraction

  def _vision_reward(self):
    return 0

  def _sim_reward(self):
    target_abs_pos = self.get_obj_pos_client(self.target_name, self.world_name).pose.position
    #object_interest = self.get_obj_pos_client(self.obj_name_list[0], 'world').pose.position
    object_interest = self.arm.get_current_pose(self.ee_link).pose.position

    dx=(target_abs_pos.x-object_interest.x)**2
    dy=(target_abs_pos.y-object_interest.y)**2
    dz=(target_abs_pos.z-object_interest.z)**2
    distance = np.sqrt(dx+dy+dz)
    reward = -distance
    if distance <= self.goal_tolerance:
      self.done=True
      if self.reward_type == 'sparse':
        reward = 1    
    else:
      self.done=False
      if self.reward_type == 'sparse':
        reward = -1
    return reward

  def _sample_obj_state(self):
    for name in self.obj_name_list:
      state_msg = ModelState()
      state_msg.model_name = name
      state_msg.reference_frame = self.table_name
      random_x=np.random.uniform(self.spawn_room_x_low,self.spawn_room_x_high)
      random_y=np.random.uniform(self.spawn_room_y_low,self.spawn_room_y_high)
      random_pose=Pose(position=Point(random_x,random_y,self.spawn_room_z_low),orientation=Quaternion(0,0,0,0))
      state_msg.pose = random_pose
      try:
        self.set_state_client(state_msg)
      except rospy.ServiceException as e:
        print("Service call failed: {}".format(e))

  def _sample_target_state(self):
    state_msg = ModelState()
    state_msg.model_name = self.target_name
    state_msg.reference_frame = self.table_name
    random_x=np.random.uniform(self.spawn_room_x_low,self.spawn_room_x_high)
    random_y=np.random.uniform(self.spawn_room_y_low,self.spawn_room_y_high)
    random_z=np.random.uniform(self.spawn_room_z_low,self.spawn_room_z_high)
    random_pose=Pose(position=Point(random_x,random_y,random_z),orientation=Quaternion(0,0,0,0))
    state_msg.pose = random_pose
    try:
      self.set_state_client(state_msg)
    except rospy.ServiceException as e:
      print("Service call failed: {}".format(e))
  
  def _spawn_obj(self):
    #SPAWN ALL OBJECTS
    if not self.spawn_track:
      #============TCP===========
      if self.verbose:
        try:
          random_pose=Pose(position=Point(0,0,1),orientation=Quaternion(0,0,0,0))
          self.spawn_model_client(model_name=self.tcp_name, \
            model_xml=open(self.tcp_path, 'r').read(),\
            robot_namespace='',\
            initial_pose=random_pose,\
            reference_frame=self.table_name)
        except rospy.ServiceException as e:
          print("Service call failed: {}".format(e))

      #==============OBJ===============
      for i,name in enumerate(self.obj_name_list):
        random_pose=Pose(position=Point(0,0,0.5),orientation=Quaternion(0,0,0,0))
        #print(random_point)
        try:
          self.spawn_model_client(model_name=name, \
            model_xml=open(self.box_path, 'r').read(),\
            robot_namespace='',\
            initial_pose=random_pose,\
            reference_frame=self.table_name)
        except rospy.ServiceException as e:
          print("Service call failed: {}".format(e))

      #==============TARGET===============
      random_pose=Pose(position=Point(0.3,0,0.1),orientation=Quaternion(0,0,0,0))
      #print(random_point)
      try:
        self.spawn_model_client(model_name=self.target_name, \
            model_xml=open(self.target_path, 'r').read(),\
            robot_namespace='',\
            initial_pose=random_pose,\
            reference_frame=self.table_name)
      except rospy.ServiceException as e:
        print("Service call failed: {}".format(e))
      self.spawn_track=True
      #===================================

    return True

  def _delete_obj(self):
    #DELETE ALL OBJECT
    if self.spawn_track:
      #=========OBJ=========
      for name in self.obj_name_list:
        self.delete_model_client(model_name=name)
      #=========TARGET======
      self.delete_model_client(model_name=self.target_name)
      self.spawn_track=False
    return True
  
  def cleanup(self):
    rospy.loginfo("Stopping the robot")
    # Stop any current arm movement
    self.arm.stop()
    #Shut down MoveIt! cleanly
    rospy.loginfo("Shutting down Moveit!")
    moveit_commander.roscpp_shutdown()
    moveit_commander.os._exit(0)


def main(num_demo=10,max_step=50):
  try:
    env=myur5e_gym(arm_name='arm',reward_type='dense')
    start_total = timeit.default_timer()
    for _ in range(num_demo):
      rds=random.randint(0,10)
      random.seed(rds)
      start = timeit.default_timer()
      observation = env.reset()
      for t in range(max_step):
        action = random.uniform(-1,1,size=(3,))
        obs, reward, done = env.step(action)
        print("Step: {} reward: {} done {}".format(t,reward, done))
        # print(obs['desired_goal'])
        # print(obs['achieved_goal'])
      stop = timeit.default_timer()
      print('1 episode runtime: ', stop - start)

    stop_total = timeit.default_timer()
    print('Runtime: ', stop_total - start_total)
  except rospy.ROSInterruptException:
    print ("Program interrupted before completion")

if __name__ == '__main__':
  try:
    main()
  except KeyboardInterrupt:
    print("Shutting down Gym node.")
  
