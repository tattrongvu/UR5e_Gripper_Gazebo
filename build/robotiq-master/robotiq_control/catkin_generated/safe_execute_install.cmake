execute_process(COMMAND "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/build/robotiq-master/robotiq_control/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/build/robotiq-master/robotiq_control/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
