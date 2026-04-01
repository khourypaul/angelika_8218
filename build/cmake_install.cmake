# Install script for directory: /home/razer/catkin_ws_assistive/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/razer/catkin_ws_assistive/install")
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
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/razer/catkin_ws_assistive/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/razer/catkin_ws_assistive/install" TYPE PROGRAM FILES "/home/razer/catkin_ws_assistive/build/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/razer/catkin_ws_assistive/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/razer/catkin_ws_assistive/install" TYPE PROGRAM FILES "/home/razer/catkin_ws_assistive/build/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/razer/catkin_ws_assistive/install/setup.bash;/home/razer/catkin_ws_assistive/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/razer/catkin_ws_assistive/install" TYPE FILE FILES
    "/home/razer/catkin_ws_assistive/build/catkin_generated/installspace/setup.bash"
    "/home/razer/catkin_ws_assistive/build/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/razer/catkin_ws_assistive/install/setup.sh;/home/razer/catkin_ws_assistive/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/razer/catkin_ws_assistive/install" TYPE FILE FILES
    "/home/razer/catkin_ws_assistive/build/catkin_generated/installspace/setup.sh"
    "/home/razer/catkin_ws_assistive/build/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/razer/catkin_ws_assistive/install/setup.zsh;/home/razer/catkin_ws_assistive/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/razer/catkin_ws_assistive/install" TYPE FILE FILES
    "/home/razer/catkin_ws_assistive/build/catkin_generated/installspace/setup.zsh"
    "/home/razer/catkin_ws_assistive/build/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/razer/catkin_ws_assistive/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/razer/catkin_ws_assistive/install" TYPE FILE FILES "/home/razer/catkin_ws_assistive/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/razer/catkin_ws_assistive/build/gtest/cmake_install.cmake")
  include("/home/razer/catkin_ws_assistive/build/geometry2/geometry2/cmake_install.cmake")
  include("/home/razer/catkin_ws_assistive/build/kinova-ros/kinova_bringup/cmake_install.cmake")
  include("/home/razer/catkin_ws_assistive/build/kinova-ros/kinova_control/cmake_install.cmake")
  include("/home/razer/catkin_ws_assistive/build/kinova-ros/kinova_gazebo/cmake_install.cmake")
  include("/home/razer/catkin_ws_assistive/build/assistive_msgs/cmake_install.cmake")
  include("/home/razer/catkin_ws_assistive/build/tablet_arduino_talker/cmake_install.cmake")
  include("/home/razer/catkin_ws_assistive/build/geometry2/tf2_msgs/cmake_install.cmake")
  include("/home/razer/catkin_ws_assistive/build/geometry2/tf2/cmake_install.cmake")
  include("/home/razer/catkin_ws_assistive/build/geometry2/tf2_bullet/cmake_install.cmake")
  include("/home/razer/catkin_ws_assistive/build/geometry2/tf2_eigen/cmake_install.cmake")
  include("/home/razer/catkin_ws_assistive/build/assistive_launch/cmake_install.cmake")
  include("/home/razer/catkin_ws_assistive/build/RVizMeshVisualizer/cmake_install.cmake")
  include("/home/razer/catkin_ws_assistive/build/assistive_gui/cmake_install.cmake")
  include("/home/razer/catkin_ws_assistive/build/geometry2/tf2_py/cmake_install.cmake")
  include("/home/razer/catkin_ws_assistive/build/kinova-ros/kinova_msgs/cmake_install.cmake")
  include("/home/razer/catkin_ws_assistive/build/kinova-ros/kinova_helper/cmake_install.cmake")
  include("/home/razer/catkin_ws_assistive/build/geometry2/tf2_ros/cmake_install.cmake")
  include("/home/razer/catkin_ws_assistive/build/assistive_controllers/cmake_install.cmake")
  include("/home/razer/catkin_ws_assistive/build/oarbot_control/cmake_install.cmake")
  include("/home/razer/catkin_ws_assistive/build/AssistiveRobot-SimulationFiles/lab_gazebo/cmake_install.cmake")
  include("/home/razer/catkin_ws_assistive/build/rosbag_editor/cmake_install.cmake")
  include("/home/razer/catkin_ws_assistive/build/geometry2/tf2_geometry_msgs/cmake_install.cmake")
  include("/home/razer/catkin_ws_assistive/build/kinova-ros/kinova_driver/cmake_install.cmake")
  include("/home/razer/catkin_ws_assistive/build/kinova-ros/kinova_demo/cmake_install.cmake")
  include("/home/razer/catkin_ws_assistive/build/centralized_controllers/cmake_install.cmake")
  include("/home/razer/catkin_ws_assistive/build/geometry2/tf2_kdl/cmake_install.cmake")
  include("/home/razer/catkin_ws_assistive/build/geometry2/test_tf2/cmake_install.cmake")
  include("/home/razer/catkin_ws_assistive/build/geometry2/tf2_sensor_msgs/cmake_install.cmake")
  include("/home/razer/catkin_ws_assistive/build/geometry2/tf2_tools/cmake_install.cmake")
  include("/home/razer/catkin_ws_assistive/build/tf_broadcasters/cmake_install.cmake")
  include("/home/razer/catkin_ws_assistive/build/topic_tf_transformers/cmake_install.cmake")
  include("/home/razer/catkin_ws_assistive/build/obstacle_detector/cmake_install.cmake")
  include("/home/razer/catkin_ws_assistive/build/rviz_ortho_view_controller/cmake_install.cmake")
  include("/home/razer/catkin_ws_assistive/build/uwb_gazebo_plugin/cmake_install.cmake")
  include("/home/razer/catkin_ws_assistive/build/uwb_pose_publisher/cmake_install.cmake")
  include("/home/razer/catkin_ws_assistive/build/uwb_reader/cmake_install.cmake")
  include("/home/razer/catkin_ws_assistive/build/vel_controller/cmake_install.cmake")
  include("/home/razer/catkin_ws_assistive/build/kinova-ros/kinova_description/cmake_install.cmake")
  include("/home/razer/catkin_ws_assistive/build/kinova-ros/kinova_moveit/robot_configs/j2n6s300_moveit_config/cmake_install.cmake")
  include("/home/razer/catkin_ws_assistive/build/kinova-ros/kinova_moveit/robot_configs/j2s6s300_moveit_config/cmake_install.cmake")
  include("/home/razer/catkin_ws_assistive/build/kinova-ros/kinova_moveit/robot_configs/j2s7s300_moveit_config/cmake_install.cmake")
  include("/home/razer/catkin_ws_assistive/build/kinova-ros/kinova_moveit/robot_configs/m1n6s300_moveit_config/cmake_install.cmake")
  include("/home/razer/catkin_ws_assistive/build/kinova-ros/kinova_moveit/inverse_kinematics_plugins/ikfast/j2n6s300_ikfast/cmake_install.cmake")
  include("/home/razer/catkin_ws_assistive/build/kinova-ros/kinova_moveit/inverse_kinematics_plugins/ikfast/j2s6s300_ikfast/cmake_install.cmake")
  include("/home/razer/catkin_ws_assistive/build/kinova-ros/kinova_moveit/inverse_kinematics_plugins/ikfast/j2s7s300_ikfast/cmake_install.cmake")
  include("/home/razer/catkin_ws_assistive/build/kinova-ros/kinova_moveit/inverse_kinematics_plugins/ikfast/m1n6s300_ikfast/cmake_install.cmake")
  include("/home/razer/catkin_ws_assistive/build/kinova-ros/kinova_moveit/kinova_arm_moveit_demo/cmake_install.cmake")
  include("/home/razer/catkin_ws_assistive/build/bota_rokubi_ft_sensor/rokubi_kinova_adapter/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/razer/catkin_ws_assistive/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
