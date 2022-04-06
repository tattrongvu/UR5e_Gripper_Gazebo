#! /usr/bin/env python3
import sys
import copy
import rospy
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg
from copy import deepcopy
import cv2

moveit_commander.roscpp_initialize(sys.argv)
rospy.init_node('getstate')
arm = moveit_commander.MoveGroupCommander("arm")
eef_link = arm.get_end_effector_link()
cv2.namedWindow("get state", 1)
while True:
  k=cv2.waitKey(3)
  if k==ord('g'):
    wpose = arm.get_current_pose(eef_link).pose
    print("Current pose: ",wpose)

  if k==27:
      break
  # print("EElink: ",eef_link)


rospy.sleep(2)
moveit_commander.roscpp_shutdown()
print("Done!")
