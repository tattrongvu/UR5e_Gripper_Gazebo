# UR5e_Gripper_Gazebo

# Rviz:
  roslaunch myur5e_description myur5e_rviz.launch

# Run only Gazebo Simulation:
  roslaunch myur5e_gazebo myur5e_gazebo.launch

# RQT rqt_joint_trajectory_controller gui:
  rosrun rqt_joint_trajectory_controller rqt_joint_trajectory_controller

# Run Moveit:
  roslaunch myur5e_gazebo myur5e_planning_execution.launch

# Moveit (with rviz) and Gazebo:
  roslaunch myur5e_gazebo myur5e_gazebo_moveit_rviz.launch
  roslaunch myur5e_gazebo myur5e_gazebo_moveit.launch
  roslaunch myur5e_gazebo myur5e_test.launch

# Run some examples:
  rosrun perception_modul myvision.py

Print package: rospack list | grep gazebo_ros
Print current active topics: rostopic list

# TEST GRIPPER PKG: 
roslaunch robotiq_85_gazebo robotiq_85_moveit_rviz_test.launch