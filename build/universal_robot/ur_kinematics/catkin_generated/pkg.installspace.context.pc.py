# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/home/trong/miniconda3/include".split(';') if "${prefix}/include;/home/trong/miniconda3/include" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;geometry_msgs;moveit_core;moveit_kinematics;moveit_ros_planning;pluginlib;tf_conversions".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lur3_kin;-lur5_kin;-lur10_kin;-lur3_moveit_plugin;-lur5_moveit_plugin;-lur10_moveit_plugin;/home/trong/miniconda3/lib/libboost_system.so.1.74.0".split(';') if "-lur3_kin;-lur5_kin;-lur10_kin;-lur3_moveit_plugin;-lur5_moveit_plugin;-lur10_moveit_plugin;/home/trong/miniconda3/lib/libboost_system.so.1.74.0" != "" else []
PROJECT_NAME = "ur_kinematics"
PROJECT_SPACE_DIR = "/home/trong/Desktop/MASTER_THESIS/ROS_Lab/myws/install"
PROJECT_VERSION = "1.2.5"
