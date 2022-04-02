#! /usr/bin/env python2.7
import sys
import copy
import rospy
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg
from copy import deepcopy

moveit_commander.roscpp_initialize(sys.argv)
rospy.init_node('grasp')
arm = moveit_commander.MoveGroupCommander("arm")
grp = moveit_commander.MoveGroupCommander("gripper")

# for _ in range(2):
#   arm.set_named_target('allZero')
#   arm.go(wait=True)
#   grp.set_named_target('open')
#   grp.go(wait=True)
#   arm.set_named_target('start')
#   arm.go(wait=True)
#   grp.set_named_target('close')
#   grp.go(wait=True)
scale=1.0
waypoints = []
wpose = arm.get_current_pose().pose
wpose.position.z -= scale * 0.1  # First move up (z)
wpose.position.y += scale * 0.2  # and sideways (y)
waypoints.append(copy.deepcopy(wpose))

wpose.position.x += scale * 0.1  # Second move forward/backwards in (x)
waypoints.append(copy.deepcopy(wpose))

wpose.position.y -= scale * 0.1  # Third move sideways (y)
waypoints.append(copy.deepcopy(wpose))

plan, fraction = arm.compute_cartesian_path(waypoints, 0.01, 1, avoid_collisions=True)
print("Current pose: ",wpose)
arm.execute(plan, wait=True)

arm.set_named_target('allZero')
arm.go(wait=True)

# eef_link = arm.get_end_effector_link()
# wpose2 = arm.get_current_pose(eef_link).pose
# print("Current pose: ",wpose2)
# print("EElink: ",eef_link)


rospy.sleep(2)
moveit_commander.roscpp_shutdown()
print("Done!")
