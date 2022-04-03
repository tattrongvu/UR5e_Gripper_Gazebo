# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "robotiq_msgs: 9 messages, 0 services")

set(MSG_I_FLAGS "-Irobotiq_msgs:/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/src/robotiq-master/robotiq_msgs/msg;-Irobotiq_msgs:/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg;-Icontrol_msgs:/opt/ros/melodic/share/control_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Itrajectory_msgs:/opt/ros/melodic/share/trajectory_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(robotiq_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandFeedback.msg" NAME_WE)
add_custom_target(_robotiq_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotiq_msgs" "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandFeedback.msg" ""
)

get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionResult.msg" NAME_WE)
add_custom_target(_robotiq_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotiq_msgs" "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionResult.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:robotiq_msgs/CModelCommandResult:std_msgs/Header"
)

get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionGoal.msg" NAME_WE)
add_custom_target(_robotiq_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotiq_msgs" "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionGoal.msg" "actionlib_msgs/GoalID:robotiq_msgs/CModelCommandGoal:std_msgs/Header"
)

get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/src/robotiq-master/robotiq_msgs/msg/CModelStatus.msg" NAME_WE)
add_custom_target(_robotiq_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotiq_msgs" "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/src/robotiq-master/robotiq_msgs/msg/CModelStatus.msg" ""
)

get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/src/robotiq-master/robotiq_msgs/msg/CModelCommand.msg" NAME_WE)
add_custom_target(_robotiq_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotiq_msgs" "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/src/robotiq-master/robotiq_msgs/msg/CModelCommand.msg" ""
)

get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionFeedback.msg" NAME_WE)
add_custom_target(_robotiq_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotiq_msgs" "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionFeedback.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:robotiq_msgs/CModelCommandFeedback:std_msgs/Header"
)

get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandAction.msg" NAME_WE)
add_custom_target(_robotiq_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotiq_msgs" "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandAction.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:robotiq_msgs/CModelCommandActionResult:robotiq_msgs/CModelCommandActionGoal:robotiq_msgs/CModelCommandFeedback:std_msgs/Header:robotiq_msgs/CModelCommandResult:robotiq_msgs/CModelCommandActionFeedback:robotiq_msgs/CModelCommandGoal"
)

get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandGoal.msg" NAME_WE)
add_custom_target(_robotiq_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotiq_msgs" "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandGoal.msg" ""
)

get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandResult.msg" NAME_WE)
add_custom_target(_robotiq_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotiq_msgs" "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandResult.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(robotiq_msgs
  "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotiq_msgs
)
_generate_msg_cpp(robotiq_msgs
  "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotiq_msgs
)
_generate_msg_cpp(robotiq_msgs
  "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotiq_msgs
)
_generate_msg_cpp(robotiq_msgs
  "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/src/robotiq-master/robotiq_msgs/msg/CModelStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotiq_msgs
)
_generate_msg_cpp(robotiq_msgs
  "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/src/robotiq-master/robotiq_msgs/msg/CModelCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotiq_msgs
)
_generate_msg_cpp(robotiq_msgs
  "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotiq_msgs
)
_generate_msg_cpp(robotiq_msgs
  "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionResult.msg;/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionGoal.msg;/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandResult.msg;/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionFeedback.msg;/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotiq_msgs
)
_generate_msg_cpp(robotiq_msgs
  "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotiq_msgs
)
_generate_msg_cpp(robotiq_msgs
  "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotiq_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(robotiq_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotiq_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(robotiq_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(robotiq_msgs_generate_messages robotiq_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandFeedback.msg" NAME_WE)
add_dependencies(robotiq_msgs_generate_messages_cpp _robotiq_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionResult.msg" NAME_WE)
add_dependencies(robotiq_msgs_generate_messages_cpp _robotiq_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionGoal.msg" NAME_WE)
add_dependencies(robotiq_msgs_generate_messages_cpp _robotiq_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/src/robotiq-master/robotiq_msgs/msg/CModelStatus.msg" NAME_WE)
add_dependencies(robotiq_msgs_generate_messages_cpp _robotiq_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/src/robotiq-master/robotiq_msgs/msg/CModelCommand.msg" NAME_WE)
add_dependencies(robotiq_msgs_generate_messages_cpp _robotiq_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionFeedback.msg" NAME_WE)
add_dependencies(robotiq_msgs_generate_messages_cpp _robotiq_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandAction.msg" NAME_WE)
add_dependencies(robotiq_msgs_generate_messages_cpp _robotiq_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandGoal.msg" NAME_WE)
add_dependencies(robotiq_msgs_generate_messages_cpp _robotiq_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandResult.msg" NAME_WE)
add_dependencies(robotiq_msgs_generate_messages_cpp _robotiq_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotiq_msgs_gencpp)
add_dependencies(robotiq_msgs_gencpp robotiq_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotiq_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(robotiq_msgs
  "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotiq_msgs
)
_generate_msg_eus(robotiq_msgs
  "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotiq_msgs
)
_generate_msg_eus(robotiq_msgs
  "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotiq_msgs
)
_generate_msg_eus(robotiq_msgs
  "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/src/robotiq-master/robotiq_msgs/msg/CModelStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotiq_msgs
)
_generate_msg_eus(robotiq_msgs
  "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/src/robotiq-master/robotiq_msgs/msg/CModelCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotiq_msgs
)
_generate_msg_eus(robotiq_msgs
  "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotiq_msgs
)
_generate_msg_eus(robotiq_msgs
  "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionResult.msg;/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionGoal.msg;/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandResult.msg;/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionFeedback.msg;/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotiq_msgs
)
_generate_msg_eus(robotiq_msgs
  "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotiq_msgs
)
_generate_msg_eus(robotiq_msgs
  "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotiq_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(robotiq_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotiq_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(robotiq_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(robotiq_msgs_generate_messages robotiq_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandFeedback.msg" NAME_WE)
add_dependencies(robotiq_msgs_generate_messages_eus _robotiq_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionResult.msg" NAME_WE)
add_dependencies(robotiq_msgs_generate_messages_eus _robotiq_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionGoal.msg" NAME_WE)
add_dependencies(robotiq_msgs_generate_messages_eus _robotiq_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/src/robotiq-master/robotiq_msgs/msg/CModelStatus.msg" NAME_WE)
add_dependencies(robotiq_msgs_generate_messages_eus _robotiq_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/src/robotiq-master/robotiq_msgs/msg/CModelCommand.msg" NAME_WE)
add_dependencies(robotiq_msgs_generate_messages_eus _robotiq_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionFeedback.msg" NAME_WE)
add_dependencies(robotiq_msgs_generate_messages_eus _robotiq_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandAction.msg" NAME_WE)
add_dependencies(robotiq_msgs_generate_messages_eus _robotiq_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandGoal.msg" NAME_WE)
add_dependencies(robotiq_msgs_generate_messages_eus _robotiq_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandResult.msg" NAME_WE)
add_dependencies(robotiq_msgs_generate_messages_eus _robotiq_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotiq_msgs_geneus)
add_dependencies(robotiq_msgs_geneus robotiq_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotiq_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(robotiq_msgs
  "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotiq_msgs
)
_generate_msg_lisp(robotiq_msgs
  "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotiq_msgs
)
_generate_msg_lisp(robotiq_msgs
  "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotiq_msgs
)
_generate_msg_lisp(robotiq_msgs
  "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/src/robotiq-master/robotiq_msgs/msg/CModelStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotiq_msgs
)
_generate_msg_lisp(robotiq_msgs
  "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/src/robotiq-master/robotiq_msgs/msg/CModelCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotiq_msgs
)
_generate_msg_lisp(robotiq_msgs
  "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotiq_msgs
)
_generate_msg_lisp(robotiq_msgs
  "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionResult.msg;/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionGoal.msg;/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandResult.msg;/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionFeedback.msg;/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotiq_msgs
)
_generate_msg_lisp(robotiq_msgs
  "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotiq_msgs
)
_generate_msg_lisp(robotiq_msgs
  "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotiq_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(robotiq_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotiq_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(robotiq_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(robotiq_msgs_generate_messages robotiq_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandFeedback.msg" NAME_WE)
add_dependencies(robotiq_msgs_generate_messages_lisp _robotiq_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionResult.msg" NAME_WE)
add_dependencies(robotiq_msgs_generate_messages_lisp _robotiq_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionGoal.msg" NAME_WE)
add_dependencies(robotiq_msgs_generate_messages_lisp _robotiq_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/src/robotiq-master/robotiq_msgs/msg/CModelStatus.msg" NAME_WE)
add_dependencies(robotiq_msgs_generate_messages_lisp _robotiq_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/src/robotiq-master/robotiq_msgs/msg/CModelCommand.msg" NAME_WE)
add_dependencies(robotiq_msgs_generate_messages_lisp _robotiq_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionFeedback.msg" NAME_WE)
add_dependencies(robotiq_msgs_generate_messages_lisp _robotiq_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandAction.msg" NAME_WE)
add_dependencies(robotiq_msgs_generate_messages_lisp _robotiq_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandGoal.msg" NAME_WE)
add_dependencies(robotiq_msgs_generate_messages_lisp _robotiq_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandResult.msg" NAME_WE)
add_dependencies(robotiq_msgs_generate_messages_lisp _robotiq_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotiq_msgs_genlisp)
add_dependencies(robotiq_msgs_genlisp robotiq_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotiq_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(robotiq_msgs
  "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotiq_msgs
)
_generate_msg_nodejs(robotiq_msgs
  "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotiq_msgs
)
_generate_msg_nodejs(robotiq_msgs
  "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotiq_msgs
)
_generate_msg_nodejs(robotiq_msgs
  "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/src/robotiq-master/robotiq_msgs/msg/CModelStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotiq_msgs
)
_generate_msg_nodejs(robotiq_msgs
  "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/src/robotiq-master/robotiq_msgs/msg/CModelCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotiq_msgs
)
_generate_msg_nodejs(robotiq_msgs
  "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotiq_msgs
)
_generate_msg_nodejs(robotiq_msgs
  "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionResult.msg;/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionGoal.msg;/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandResult.msg;/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionFeedback.msg;/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotiq_msgs
)
_generate_msg_nodejs(robotiq_msgs
  "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotiq_msgs
)
_generate_msg_nodejs(robotiq_msgs
  "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotiq_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(robotiq_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotiq_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(robotiq_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(robotiq_msgs_generate_messages robotiq_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandFeedback.msg" NAME_WE)
add_dependencies(robotiq_msgs_generate_messages_nodejs _robotiq_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionResult.msg" NAME_WE)
add_dependencies(robotiq_msgs_generate_messages_nodejs _robotiq_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionGoal.msg" NAME_WE)
add_dependencies(robotiq_msgs_generate_messages_nodejs _robotiq_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/src/robotiq-master/robotiq_msgs/msg/CModelStatus.msg" NAME_WE)
add_dependencies(robotiq_msgs_generate_messages_nodejs _robotiq_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/src/robotiq-master/robotiq_msgs/msg/CModelCommand.msg" NAME_WE)
add_dependencies(robotiq_msgs_generate_messages_nodejs _robotiq_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionFeedback.msg" NAME_WE)
add_dependencies(robotiq_msgs_generate_messages_nodejs _robotiq_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandAction.msg" NAME_WE)
add_dependencies(robotiq_msgs_generate_messages_nodejs _robotiq_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandGoal.msg" NAME_WE)
add_dependencies(robotiq_msgs_generate_messages_nodejs _robotiq_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandResult.msg" NAME_WE)
add_dependencies(robotiq_msgs_generate_messages_nodejs _robotiq_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotiq_msgs_gennodejs)
add_dependencies(robotiq_msgs_gennodejs robotiq_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotiq_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(robotiq_msgs
  "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotiq_msgs
)
_generate_msg_py(robotiq_msgs
  "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotiq_msgs
)
_generate_msg_py(robotiq_msgs
  "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotiq_msgs
)
_generate_msg_py(robotiq_msgs
  "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/src/robotiq-master/robotiq_msgs/msg/CModelStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotiq_msgs
)
_generate_msg_py(robotiq_msgs
  "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/src/robotiq-master/robotiq_msgs/msg/CModelCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotiq_msgs
)
_generate_msg_py(robotiq_msgs
  "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotiq_msgs
)
_generate_msg_py(robotiq_msgs
  "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionResult.msg;/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionGoal.msg;/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandResult.msg;/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionFeedback.msg;/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotiq_msgs
)
_generate_msg_py(robotiq_msgs
  "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotiq_msgs
)
_generate_msg_py(robotiq_msgs
  "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotiq_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(robotiq_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotiq_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(robotiq_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(robotiq_msgs_generate_messages robotiq_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandFeedback.msg" NAME_WE)
add_dependencies(robotiq_msgs_generate_messages_py _robotiq_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionResult.msg" NAME_WE)
add_dependencies(robotiq_msgs_generate_messages_py _robotiq_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionGoal.msg" NAME_WE)
add_dependencies(robotiq_msgs_generate_messages_py _robotiq_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/src/robotiq-master/robotiq_msgs/msg/CModelStatus.msg" NAME_WE)
add_dependencies(robotiq_msgs_generate_messages_py _robotiq_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/src/robotiq-master/robotiq_msgs/msg/CModelCommand.msg" NAME_WE)
add_dependencies(robotiq_msgs_generate_messages_py _robotiq_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandActionFeedback.msg" NAME_WE)
add_dependencies(robotiq_msgs_generate_messages_py _robotiq_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandAction.msg" NAME_WE)
add_dependencies(robotiq_msgs_generate_messages_py _robotiq_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandGoal.msg" NAME_WE)
add_dependencies(robotiq_msgs_generate_messages_py _robotiq_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/devel/share/robotiq_msgs/msg/CModelCommandResult.msg" NAME_WE)
add_dependencies(robotiq_msgs_generate_messages_py _robotiq_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotiq_msgs_genpy)
add_dependencies(robotiq_msgs_genpy robotiq_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotiq_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotiq_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotiq_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(robotiq_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET control_msgs_generate_messages_cpp)
  add_dependencies(robotiq_msgs_generate_messages_cpp control_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotiq_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotiq_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(robotiq_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET control_msgs_generate_messages_eus)
  add_dependencies(robotiq_msgs_generate_messages_eus control_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotiq_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotiq_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(robotiq_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET control_msgs_generate_messages_lisp)
  add_dependencies(robotiq_msgs_generate_messages_lisp control_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotiq_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotiq_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(robotiq_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET control_msgs_generate_messages_nodejs)
  add_dependencies(robotiq_msgs_generate_messages_nodejs control_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotiq_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotiq_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotiq_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(robotiq_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET control_msgs_generate_messages_py)
  add_dependencies(robotiq_msgs_generate_messages_py control_msgs_generate_messages_py)
endif()
