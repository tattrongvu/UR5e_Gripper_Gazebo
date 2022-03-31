import sys
import copy
import rospy
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg

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
  def __init__(self):

    self.my_img_class = myur5e_vision(resize=True)
    rospy.init_node('myur5e_gym',anonymous = True)
    #pub_gripper = rospy.Publisher('gripperCordinator', Pose, queue_size=10)
    #pub_image = rospy.Publisher('image_cv', float, queue_size=10)
    #image_sub = rospy.Subscriber('/ur5/camera5/image_raw', Image, ur5_vision.image_callback)
    self.rate = rospy.Rate(5)
    moveit_commander.roscpp_initialize(sys.argv)
    self.bridge = cv_bridge.CvBridge()

    self.robot = moveit_commander.RobotCommander()
    self.scene = moveit_commander.PlanningSceneInterface()
    ## gripper
    self.pub = rospy.Publisher('/gripper/gripper_cmd/goal', 
                        GripperCommandActionGoal,queue_size=10)
    
    self.gripper = GripperCommandActionGoal()
    self.goal = control_msgs.msg.GripperCommandGoal()

    #MOVE GROUP
    self.arm = moveit_commander.MoveGroupCommander("arm")
    self.grp = moveit_commander.MoveGroupCommander("gripper")

    self.action_low = [0,0,0,0.3]
    self.action_high = [0.7,0.7,0.7,0.8]
    
  def step(self,action):
    #ACTION [dx,dy,dz,d]
    #d (0.3,0.8)cm
    #x,y,z (m)(0,0.7)
    #POSITION CONTROLLER action = (x,y,z,d)
    #send action to robot

    ##MOVE ROBOT ARM

    self.waypoints = []
    start_pose = self.arm_group.get_current_pose(self.end_effector_link).pose
    wpose = deepcopy(start_pose)

    wpose.position.x = action[0]
    wpose.position.y = action[1]
    wpose.position.z = action[2]
    self.waypoints.append(deepcopy(wpose))

    plan, fraction = self.arm_group.compute_cartesian_path(self.waypoints, 0.01, 0.0, True)
    self.arm_group.execute(plan)

    ##Close/Open gripper
    # 0.8 close 0.3 open
    self.goal.command.position = action[3]
    self.goal.command.max_effort = 2.0 # in N
    self.gripper.goal = self.goal
    self.pub.publish(self.gripper)

    next_state = self._get_obs()
    #reward = self.compute_reward()
    
    return next_state#, reward

  def compute_reward(self):
    pass

  def reset(self):
    return self._get_obs()

  def _get_obs(self):
    self.end_effector_link = self.arm_group.get_end_effector_link()

    self.current_pose = self.arm_group.get_current_pose(self.end_effector_link).pose

    pose = Pose(self.current_pose.position, self.current_pose.orientation)
    cor = pose.position
    #print(pose)
        
    #pub_gripper.publish(a)

    img = self.my_img_class.get_image()

    self.rate.sleep()
    return cor, img