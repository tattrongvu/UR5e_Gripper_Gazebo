# Install script for directory: /home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/src/robotiq-master/robotiq_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robotiq_msgs/msg" TYPE FILE FILES
    "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/src/robotiq-master/robotiq_msgs/msg/CModelCommand.msg"
    "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/src/robotiq-master/robotiq_msgs/msg/CModelStatus.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robotiq_msgs/action" TYPE FILE FILES "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/src/robotiq-master/robotiq_msgs/action/CModelCommand.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robotiq_msgs/msg" TYPE FILE FILES
    "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandAction.msg"
    "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionGoal.msg"
    "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionResult.msg"
    "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionFeedback.msg"
    "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandGoal.msg"
    "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandResult.msg"
    "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robotiq_msgs/cmake" TYPE FILE FILES "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/build/robotiq-master/robotiq_msgs/catkin_generated/installspace/robotiq_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/include/robotiq_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/roseus/ros/robotiq_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/common-lisp/ros/robotiq_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/gennodejs/ros/robotiq_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/lib/python2.7/dist-packages/robotiq_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/lib/python2.7/dist-packages/robotiq_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/build/robotiq-master/robotiq_msgs/catkin_generated/installspace/robotiq_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robotiq_msgs/cmake" TYPE FILE FILES "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/build/robotiq-master/robotiq_msgs/catkin_generated/installspace/robotiq_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robotiq_msgs/cmake" TYPE FILE FILES
    "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/build/robotiq-master/robotiq_msgs/catkin_generated/installspace/robotiq_msgsConfig.cmake"
    "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/build/robotiq-master/robotiq_msgs/catkin_generated/installspace/robotiq_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robotiq_msgs" TYPE FILE FILES "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/src/robotiq-master/robotiq_msgs/package.xml")
endif()

