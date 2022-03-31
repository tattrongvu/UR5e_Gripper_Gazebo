#! /usr/bin/env python2.7
import sys
import copy
import rospy
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg

moveit_commander.roscpp_initialize(sys.argv)
rospy.init_node('grasp')
arm = moveit_commander.MoveGroupCommander("arm")
grp = moveit_commander.MoveGroupCommander("gripper")

for _ in range(10):
  arm.set_named_target('allZero')
  arm.go(wait=True)
  arm.set_named_target('start')
  arm.go(wait=True)

wpose = arm.get_current_pose().pose
print("Current pose: ",wpose)

# eef_link = arm.get_end_effector_link()
# wpose2 = arm.get_current_pose(eef_link).pose
# print("Current pose: ",wpose2)
# print("EElink: ",eef_link)


rospy.sleep(2)
moveit_commander.roscpp_shutdown()
print("Done!")
