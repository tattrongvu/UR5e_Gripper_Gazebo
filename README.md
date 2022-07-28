# Gazebo simulation for UR5e robot with Robotiq Wrist Camera & 2F85 Adaptive Gripper
## 1. Source bash file in any terminal that will use this simulation:
```bash
  source /home/notebooks/UR5e_Gripper_Gazebo/devel/setup.bash
```
## 2. Start Gazebo & Moveit:
```bash
  roslaunch myur5e_gazebo myur5e.launch
```
## 3. Then we can control with rqt_joint_trajectory_controller gui or control with python file:
```bash
  rosrun rqt_joint_trajectory_controller rqt_joint_trajectory_controller
```
```bash
  #random move to test gym environment
  python3 ur5e_gazebo.py
```
## Rviz:
```bash
  roslaunch myur5e_description myur5e_rviz.launch
```