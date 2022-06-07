# Gazebo simulation for UR5e robot with Robotiq Wrist Camera & 2F85 Adaptive Gripper

## Rviz:
```bash
  roslaunch myur5e_description myur5e_rviz.launch
```
## Run only Gazebo Simulation:
```bash
  roslaunch myur5e_gazebo myur5e_gazebo.launch
```
## RQT rqt_joint_trajectory_controller gui:
```bash
  rosrun rqt_joint_trajectory_controller rqt_joint_trajectory_controller
```
## Run Moveit:
```bash
  roslaunch myur5e_gazebo myur5e_planning_execution.launch
```
## Moveit (with rviz) and Gazebo:
```bash
  roslaunch myur5e_gazebo myur5e_gazebo_moveit_rviz.launch
  roslaunch myur5e_gazebo myur5e_gazebo_moveit.launch
  roslaunch myur5e_gazebo myur5e_test.launch
```
## Run some examples:
```bash
  rosrun perception_modul myvision.py
```
## TEST GRIPPER PKG: 
```bash
roslaunch robotiq_85_gazebo robotiq_85_moveit_rviz_test.launch
```