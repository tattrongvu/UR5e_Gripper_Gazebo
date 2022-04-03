#! /usr/bin/env python2.7
import sys
import copy
import rospy
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg
from copy import deepcopy
import timeit
import numpy as np
from numpy import random

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
  def __init__(self, vision_obs = False, arm_name='arm', gripper_name = 'gripper'):

    #============Init var===========
    self.vision_obs = vision_obs
    self.arm_name = arm_name
    self.gripper_name = gripper_name

    #============INIT ROSPY============
    rospy.init_node('myur5e_gym',anonymous=True)
    self.rate = rospy.Rate(1)

    #=============VISION OBSERVATION=============
    if self.vision_obs:
      #self.wrist_cam = myur5e_vision(image_topic = '/myur5e/wrist_camera/wrist_image_raw', resize=True)
      self.over_cam = myur5e_vision(image_topic = '/myur5e/overview/overview_image_raw', resize=True)
    
    #=============INIT MOVEIT=============
    moveit_commander.roscpp_initialize(sys.argv)
    self.robot = moveit_commander.RobotCommander()
    self.scene = moveit_commander.PlanningSceneInterface()

    #=============MOVE GROUP=============
    self.arm = moveit_commander.MoveGroupCommander(self.arm_name)
    #self.grp = moveit_commander.MoveGroupCommander(self.gripper_name)
    self.arm.set_goal_position_tolerance(0.1)
    self.arm.set_goal_orientation_tolerance(0.5)

    #end_effector_link
    self.ee_link = self.arm.get_end_effector_link()

    #======Action space=======
    self.action_low = [0,0,0,0.3]
    self.action_high = [0.7,0.7,0.7,0.8]

  def _moveit_plan(self,action):
    current_pose = self.arm.get_current_pose().pose
    self.waypoints = []
    wpose = deepcopy(current_pose)
    wpose.position.x += action[0]
    wpose.position.y += action[1]
    wpose.position.z += action[2]
    self.waypoints.append(deepcopy(wpose))

    plan, fraction = self.arm.compute_cartesian_path(self.waypoints, 0.01, 5.0, True)
    return plan, fraction
    
  def step(self,action):
    #ACTION [dx,dy,dz,d]
    #d (0.3,0.8)cm
    #x,y,z (m)(0,0.7)
    #POSITION CONTROLLER action = (x,y,z,d)
    #send action to robot

    ##MOVE ROBOT ARM
    plan, _ = self._moveit_plan(action)
    self.arm.execute(plan)

    next_state = self._get_obs()
    #reward = self.compute_reward()
    
    return next_state#, reward

  def compute_reward(self):
    pass

  def reset(self):
    self.arm.set_named_target('start')
    self.arm.go(wait=True)
    return self._get_obs()

  def _get_obs(self):
    #Position of gripper
    self.rate.sleep()
    self.current_pose = self.arm.get_current_pose(self.ee_link).pose
    
    if self.vision_obs:
      img = self.my_img_class.get_image()
      return self.current_pose, img
    else:
      return self.current_pose, None

def main(num_demo=10,max_step=50):
  try:
    env=myur5e_gym(arm_name='arm')
    start_total = timeit.default_timer()
    for _ in range(num_demo):
      rds=random.randint(0,10)
      random.seed(rds)
      start = timeit.default_timer()
      observation = env.reset()
      for t in range(max_step):
        action = random.uniform(-0.1,0.1,size=(3,))
        pose, img = env.step(action)
        print("Step: {} \r".format(t))
      stop = timeit.default_timer()
      print('1 episode runtime: ', stop - start)

    stop_total = timeit.default_timer()
    print('Runtime: ', stop_total - start_total)
  except rospy.ROSInterruptException:
    print ("Program interrupted before completion")

if __name__ == '__main__':
  main()