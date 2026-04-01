# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "assistive_msgs: 7 messages, 0 services")

set(MSG_I_FLAGS "-Iassistive_msgs:/home/razer/catkin_ws_assistive/src/assistive_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(assistive_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/State2D.msg" NAME_WE)
add_custom_target(_assistive_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "assistive_msgs" "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/State2D.msg" "geometry_msgs/Pose2D:geometry_msgs/Twist:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDetection.msg" NAME_WE)
add_custom_target(_assistive_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "assistive_msgs" "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDetection.msg" "geometry_msgs/Point32"
)

get_filename_component(_filename "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDetectionArray.msg" NAME_WE)
add_custom_target(_assistive_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "assistive_msgs" "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDetectionArray.msg" "std_msgs/Header:geometry_msgs/Point32:assistive_msgs/TagDetection"
)

get_filename_component(_filename "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDepthObservation.msg" NAME_WE)
add_custom_target(_assistive_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "assistive_msgs" "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDepthObservation.msg" "geometry_msgs/Point:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDepthObservationArray.msg" NAME_WE)
add_custom_target(_assistive_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "assistive_msgs" "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDepthObservationArray.msg" "std_msgs/Header:assistive_msgs/TagDepthObservation:geometry_msgs/Point:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagPose.msg" NAME_WE)
add_custom_target(_assistive_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "assistive_msgs" "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagPose.msg" "geometry_msgs/Quaternion:geometry_msgs/Vector3:geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/PoseWithCovariance"
)

get_filename_component(_filename "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagPoseArray.msg" NAME_WE)
add_custom_target(_assistive_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "assistive_msgs" "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagPoseArray.msg" "std_msgs/Header:assistive_msgs/TagPose:geometry_msgs/Quaternion:geometry_msgs/Vector3:geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/PoseWithCovariance"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(assistive_msgs
  "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/State2D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/assistive_msgs
)
_generate_msg_cpp(assistive_msgs
  "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/assistive_msgs
)
_generate_msg_cpp(assistive_msgs
  "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDetection.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/assistive_msgs
)
_generate_msg_cpp(assistive_msgs
  "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDepthObservation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/assistive_msgs
)
_generate_msg_cpp(assistive_msgs
  "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDepthObservationArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDepthObservation.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/assistive_msgs
)
_generate_msg_cpp(assistive_msgs
  "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/assistive_msgs
)
_generate_msg_cpp(assistive_msgs
  "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagPoseArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/assistive_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(assistive_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/assistive_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(assistive_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(assistive_msgs_generate_messages assistive_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/State2D.msg" NAME_WE)
add_dependencies(assistive_msgs_generate_messages_cpp _assistive_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDetection.msg" NAME_WE)
add_dependencies(assistive_msgs_generate_messages_cpp _assistive_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDetectionArray.msg" NAME_WE)
add_dependencies(assistive_msgs_generate_messages_cpp _assistive_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDepthObservation.msg" NAME_WE)
add_dependencies(assistive_msgs_generate_messages_cpp _assistive_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDepthObservationArray.msg" NAME_WE)
add_dependencies(assistive_msgs_generate_messages_cpp _assistive_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagPose.msg" NAME_WE)
add_dependencies(assistive_msgs_generate_messages_cpp _assistive_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagPoseArray.msg" NAME_WE)
add_dependencies(assistive_msgs_generate_messages_cpp _assistive_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(assistive_msgs_gencpp)
add_dependencies(assistive_msgs_gencpp assistive_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS assistive_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(assistive_msgs
  "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/State2D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/assistive_msgs
)
_generate_msg_eus(assistive_msgs
  "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/assistive_msgs
)
_generate_msg_eus(assistive_msgs
  "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDetection.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/assistive_msgs
)
_generate_msg_eus(assistive_msgs
  "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDepthObservation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/assistive_msgs
)
_generate_msg_eus(assistive_msgs
  "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDepthObservationArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDepthObservation.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/assistive_msgs
)
_generate_msg_eus(assistive_msgs
  "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/assistive_msgs
)
_generate_msg_eus(assistive_msgs
  "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagPoseArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/assistive_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(assistive_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/assistive_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(assistive_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(assistive_msgs_generate_messages assistive_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/State2D.msg" NAME_WE)
add_dependencies(assistive_msgs_generate_messages_eus _assistive_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDetection.msg" NAME_WE)
add_dependencies(assistive_msgs_generate_messages_eus _assistive_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDetectionArray.msg" NAME_WE)
add_dependencies(assistive_msgs_generate_messages_eus _assistive_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDepthObservation.msg" NAME_WE)
add_dependencies(assistive_msgs_generate_messages_eus _assistive_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDepthObservationArray.msg" NAME_WE)
add_dependencies(assistive_msgs_generate_messages_eus _assistive_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagPose.msg" NAME_WE)
add_dependencies(assistive_msgs_generate_messages_eus _assistive_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagPoseArray.msg" NAME_WE)
add_dependencies(assistive_msgs_generate_messages_eus _assistive_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(assistive_msgs_geneus)
add_dependencies(assistive_msgs_geneus assistive_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS assistive_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(assistive_msgs
  "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/State2D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/assistive_msgs
)
_generate_msg_lisp(assistive_msgs
  "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/assistive_msgs
)
_generate_msg_lisp(assistive_msgs
  "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDetection.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/assistive_msgs
)
_generate_msg_lisp(assistive_msgs
  "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDepthObservation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/assistive_msgs
)
_generate_msg_lisp(assistive_msgs
  "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDepthObservationArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDepthObservation.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/assistive_msgs
)
_generate_msg_lisp(assistive_msgs
  "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/assistive_msgs
)
_generate_msg_lisp(assistive_msgs
  "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagPoseArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/assistive_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(assistive_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/assistive_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(assistive_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(assistive_msgs_generate_messages assistive_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/State2D.msg" NAME_WE)
add_dependencies(assistive_msgs_generate_messages_lisp _assistive_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDetection.msg" NAME_WE)
add_dependencies(assistive_msgs_generate_messages_lisp _assistive_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDetectionArray.msg" NAME_WE)
add_dependencies(assistive_msgs_generate_messages_lisp _assistive_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDepthObservation.msg" NAME_WE)
add_dependencies(assistive_msgs_generate_messages_lisp _assistive_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDepthObservationArray.msg" NAME_WE)
add_dependencies(assistive_msgs_generate_messages_lisp _assistive_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagPose.msg" NAME_WE)
add_dependencies(assistive_msgs_generate_messages_lisp _assistive_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagPoseArray.msg" NAME_WE)
add_dependencies(assistive_msgs_generate_messages_lisp _assistive_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(assistive_msgs_genlisp)
add_dependencies(assistive_msgs_genlisp assistive_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS assistive_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(assistive_msgs
  "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/State2D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/assistive_msgs
)
_generate_msg_nodejs(assistive_msgs
  "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/assistive_msgs
)
_generate_msg_nodejs(assistive_msgs
  "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDetection.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/assistive_msgs
)
_generate_msg_nodejs(assistive_msgs
  "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDepthObservation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/assistive_msgs
)
_generate_msg_nodejs(assistive_msgs
  "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDepthObservationArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDepthObservation.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/assistive_msgs
)
_generate_msg_nodejs(assistive_msgs
  "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/assistive_msgs
)
_generate_msg_nodejs(assistive_msgs
  "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagPoseArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/assistive_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(assistive_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/assistive_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(assistive_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(assistive_msgs_generate_messages assistive_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/State2D.msg" NAME_WE)
add_dependencies(assistive_msgs_generate_messages_nodejs _assistive_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDetection.msg" NAME_WE)
add_dependencies(assistive_msgs_generate_messages_nodejs _assistive_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDetectionArray.msg" NAME_WE)
add_dependencies(assistive_msgs_generate_messages_nodejs _assistive_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDepthObservation.msg" NAME_WE)
add_dependencies(assistive_msgs_generate_messages_nodejs _assistive_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDepthObservationArray.msg" NAME_WE)
add_dependencies(assistive_msgs_generate_messages_nodejs _assistive_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagPose.msg" NAME_WE)
add_dependencies(assistive_msgs_generate_messages_nodejs _assistive_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagPoseArray.msg" NAME_WE)
add_dependencies(assistive_msgs_generate_messages_nodejs _assistive_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(assistive_msgs_gennodejs)
add_dependencies(assistive_msgs_gennodejs assistive_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS assistive_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(assistive_msgs
  "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/State2D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/assistive_msgs
)
_generate_msg_py(assistive_msgs
  "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/assistive_msgs
)
_generate_msg_py(assistive_msgs
  "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDetection.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/assistive_msgs
)
_generate_msg_py(assistive_msgs
  "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDepthObservation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/assistive_msgs
)
_generate_msg_py(assistive_msgs
  "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDepthObservationArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDepthObservation.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/assistive_msgs
)
_generate_msg_py(assistive_msgs
  "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/assistive_msgs
)
_generate_msg_py(assistive_msgs
  "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagPoseArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/assistive_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(assistive_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/assistive_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(assistive_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(assistive_msgs_generate_messages assistive_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/State2D.msg" NAME_WE)
add_dependencies(assistive_msgs_generate_messages_py _assistive_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDetection.msg" NAME_WE)
add_dependencies(assistive_msgs_generate_messages_py _assistive_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDetectionArray.msg" NAME_WE)
add_dependencies(assistive_msgs_generate_messages_py _assistive_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDepthObservation.msg" NAME_WE)
add_dependencies(assistive_msgs_generate_messages_py _assistive_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagDepthObservationArray.msg" NAME_WE)
add_dependencies(assistive_msgs_generate_messages_py _assistive_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagPose.msg" NAME_WE)
add_dependencies(assistive_msgs_generate_messages_py _assistive_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/razer/catkin_ws_assistive/src/assistive_msgs/msg/TagPoseArray.msg" NAME_WE)
add_dependencies(assistive_msgs_generate_messages_py _assistive_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(assistive_msgs_genpy)
add_dependencies(assistive_msgs_genpy assistive_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS assistive_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/assistive_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/assistive_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(assistive_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(assistive_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/assistive_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/assistive_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(assistive_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(assistive_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/assistive_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/assistive_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(assistive_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(assistive_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/assistive_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/assistive_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(assistive_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(assistive_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/assistive_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/assistive_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/assistive_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(assistive_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(assistive_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
