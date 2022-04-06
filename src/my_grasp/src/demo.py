#! /usr/bin/env python3
import sys
import copy
import rospy
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg
from copy import deepcopy
from gazebo_msgs.srv import SpawnModel, GetModelState

from geometry_msgs.msg import Pose, Point, Quaternion




rospy.init_node('grasp')

moveit_commander.roscpp_initialize(sys.argv)
arm = moveit_commander.MoveGroupCommander("arm")
grp = moveit_commander.MoveGroupCommander("gripper")
eef_link = arm.get_end_effector_link()
print(arm.get_pose_reference_frame())
arm.set_named_target('start')
arm.go(wait=True)
start_pose = arm.get_current_pose(eef_link).pose
print("Current pose: ",start_pose)
# grp.set_named_target('close')
# grp.go(wait=True)
# grp.set_named_target('open')
# grp.go(wait=True)

#============================================
model_coordinates = rospy.ServiceProxy('/gazebo/get_model_state', GetModelState)

#delete_model = rospy.ServiceProxy('/gazebo/delete_model', DeleteModel)
spawn_model_client = rospy.ServiceProxy('/gazebo/spawn_sdf_model', SpawnModel)

spawn_model_client(model_name='box',\
  model_xml=open('/home/trong/Desktop/MASTER_THESIS/ROS_Lab/noetic/my_noetic_ws/src/myur5e/myur5e_description/urdf/objects/mybox.urdf.xacro', 'r').read(),\
  robot_namespace='',\
  initial_pose=Pose(position= Point(0,0,0.1),orientation=Quaternion(0,0,0,0)),reference_frame="mytable")

# spawn_model_client(model_name='box2',\
#   model_xml=open('/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/src/myur5e/myur5e_description/urdf/mybox.urdf.xacro', 'r').read(),\
#   robot_namespace='',\
#   initial_pose=Pose(position= Point(0.2,0,0.1),orientation=Quaternion(0,0,0,0)),reference_frame="mytable")
obj_pose= model_coordinates('box','world').pose

#============================================

pose_goal = geometry_msgs.msg.Pose()
pose_goal.orientation.w = 1
pose_goal.position.x = 0.65
pose_goal.position.y = 0
pose_goal.position.z = 1.02

arm.set_pose_target(pose_goal)
arm.go(wait=True)
arm.clear_pose_targets()

grp.set_named_target('close')
grp.go(wait=True)

arm.set_named_target('start')
arm.go(wait=True)



rospy.sleep(2)
moveit_commander.roscpp_shutdown()
print("Done!")
