# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "main2021: 6 messages, 5 services")

set(MSG_I_FLAGS "-Imain2021:/home/gogochiou/eudemo_ws/src/main2021/msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(main2021_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/msg/missiontomain.msg" NAME_WE)
add_custom_target(_main2021_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "main2021" "/home/gogochiou/eudemo_ws/src/main2021/msg/missiontomain.msg" ""
)

get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/srv/ns.srv" NAME_WE)
add_custom_target(_main2021_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "main2021" "/home/gogochiou/eudemo_ws/src/main2021/srv/ns.srv" ""
)

get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/msg/Data.msg" NAME_WE)
add_custom_target(_main2021_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "main2021" "/home/gogochiou/eudemo_ws/src/main2021/msg/Data.msg" ""
)

get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/srv/mission_srv.srv" NAME_WE)
add_custom_target(_main2021_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "main2021" "/home/gogochiou/eudemo_ws/src/main2021/srv/mission_srv.srv" ""
)

get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/msg/position.msg" NAME_WE)
add_custom_target(_main2021_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "main2021" "/home/gogochiou/eudemo_ws/src/main2021/msg/position.msg" ""
)

get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/msg/plannerState.msg" NAME_WE)
add_custom_target(_main2021_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "main2021" "/home/gogochiou/eudemo_ws/src/main2021/msg/plannerState.msg" ""
)

get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/msg/maintomission.msg" NAME_WE)
add_custom_target(_main2021_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "main2021" "/home/gogochiou/eudemo_ws/src/main2021/msg/maintomission.msg" ""
)

get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/msg/dataToAgent.msg" NAME_WE)
add_custom_target(_main2021_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "main2021" "/home/gogochiou/eudemo_ws/src/main2021/msg/dataToAgent.msg" ""
)

get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/srv/cup_camera.srv" NAME_WE)
add_custom_target(_main2021_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "main2021" "/home/gogochiou/eudemo_ws/src/main2021/srv/cup_camera.srv" ""
)

get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/srv/goap_srv.srv" NAME_WE)
add_custom_target(_main2021_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "main2021" "/home/gogochiou/eudemo_ws/src/main2021/srv/goap_srv.srv" ""
)

get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/srv/cup.srv" NAME_WE)
add_custom_target(_main2021_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "main2021" "/home/gogochiou/eudemo_ws/src/main2021/srv/cup.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/msg/missiontomain.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/main2021
)
_generate_msg_cpp(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/msg/Data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/main2021
)
_generate_msg_cpp(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/msg/position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/main2021
)
_generate_msg_cpp(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/msg/plannerState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/main2021
)
_generate_msg_cpp(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/msg/maintomission.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/main2021
)
_generate_msg_cpp(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/msg/dataToAgent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/main2021
)

### Generating Services
_generate_srv_cpp(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/srv/ns.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/main2021
)
_generate_srv_cpp(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/srv/mission_srv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/main2021
)
_generate_srv_cpp(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/srv/cup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/main2021
)
_generate_srv_cpp(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/srv/cup_camera.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/main2021
)
_generate_srv_cpp(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/srv/goap_srv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/main2021
)

### Generating Module File
_generate_module_cpp(main2021
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/main2021
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(main2021_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(main2021_generate_messages main2021_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/msg/missiontomain.msg" NAME_WE)
add_dependencies(main2021_generate_messages_cpp _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/srv/ns.srv" NAME_WE)
add_dependencies(main2021_generate_messages_cpp _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/msg/Data.msg" NAME_WE)
add_dependencies(main2021_generate_messages_cpp _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/srv/mission_srv.srv" NAME_WE)
add_dependencies(main2021_generate_messages_cpp _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/msg/position.msg" NAME_WE)
add_dependencies(main2021_generate_messages_cpp _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/msg/plannerState.msg" NAME_WE)
add_dependencies(main2021_generate_messages_cpp _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/msg/maintomission.msg" NAME_WE)
add_dependencies(main2021_generate_messages_cpp _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/msg/dataToAgent.msg" NAME_WE)
add_dependencies(main2021_generate_messages_cpp _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/srv/cup_camera.srv" NAME_WE)
add_dependencies(main2021_generate_messages_cpp _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/srv/goap_srv.srv" NAME_WE)
add_dependencies(main2021_generate_messages_cpp _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/srv/cup.srv" NAME_WE)
add_dependencies(main2021_generate_messages_cpp _main2021_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(main2021_gencpp)
add_dependencies(main2021_gencpp main2021_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS main2021_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/msg/missiontomain.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/main2021
)
_generate_msg_eus(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/msg/Data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/main2021
)
_generate_msg_eus(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/msg/position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/main2021
)
_generate_msg_eus(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/msg/plannerState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/main2021
)
_generate_msg_eus(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/msg/maintomission.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/main2021
)
_generate_msg_eus(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/msg/dataToAgent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/main2021
)

### Generating Services
_generate_srv_eus(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/srv/ns.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/main2021
)
_generate_srv_eus(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/srv/mission_srv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/main2021
)
_generate_srv_eus(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/srv/cup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/main2021
)
_generate_srv_eus(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/srv/cup_camera.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/main2021
)
_generate_srv_eus(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/srv/goap_srv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/main2021
)

### Generating Module File
_generate_module_eus(main2021
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/main2021
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(main2021_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(main2021_generate_messages main2021_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/msg/missiontomain.msg" NAME_WE)
add_dependencies(main2021_generate_messages_eus _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/srv/ns.srv" NAME_WE)
add_dependencies(main2021_generate_messages_eus _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/msg/Data.msg" NAME_WE)
add_dependencies(main2021_generate_messages_eus _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/srv/mission_srv.srv" NAME_WE)
add_dependencies(main2021_generate_messages_eus _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/msg/position.msg" NAME_WE)
add_dependencies(main2021_generate_messages_eus _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/msg/plannerState.msg" NAME_WE)
add_dependencies(main2021_generate_messages_eus _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/msg/maintomission.msg" NAME_WE)
add_dependencies(main2021_generate_messages_eus _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/msg/dataToAgent.msg" NAME_WE)
add_dependencies(main2021_generate_messages_eus _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/srv/cup_camera.srv" NAME_WE)
add_dependencies(main2021_generate_messages_eus _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/srv/goap_srv.srv" NAME_WE)
add_dependencies(main2021_generate_messages_eus _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/srv/cup.srv" NAME_WE)
add_dependencies(main2021_generate_messages_eus _main2021_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(main2021_geneus)
add_dependencies(main2021_geneus main2021_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS main2021_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/msg/missiontomain.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/main2021
)
_generate_msg_lisp(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/msg/Data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/main2021
)
_generate_msg_lisp(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/msg/position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/main2021
)
_generate_msg_lisp(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/msg/plannerState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/main2021
)
_generate_msg_lisp(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/msg/maintomission.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/main2021
)
_generate_msg_lisp(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/msg/dataToAgent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/main2021
)

### Generating Services
_generate_srv_lisp(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/srv/ns.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/main2021
)
_generate_srv_lisp(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/srv/mission_srv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/main2021
)
_generate_srv_lisp(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/srv/cup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/main2021
)
_generate_srv_lisp(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/srv/cup_camera.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/main2021
)
_generate_srv_lisp(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/srv/goap_srv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/main2021
)

### Generating Module File
_generate_module_lisp(main2021
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/main2021
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(main2021_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(main2021_generate_messages main2021_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/msg/missiontomain.msg" NAME_WE)
add_dependencies(main2021_generate_messages_lisp _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/srv/ns.srv" NAME_WE)
add_dependencies(main2021_generate_messages_lisp _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/msg/Data.msg" NAME_WE)
add_dependencies(main2021_generate_messages_lisp _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/srv/mission_srv.srv" NAME_WE)
add_dependencies(main2021_generate_messages_lisp _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/msg/position.msg" NAME_WE)
add_dependencies(main2021_generate_messages_lisp _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/msg/plannerState.msg" NAME_WE)
add_dependencies(main2021_generate_messages_lisp _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/msg/maintomission.msg" NAME_WE)
add_dependencies(main2021_generate_messages_lisp _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/msg/dataToAgent.msg" NAME_WE)
add_dependencies(main2021_generate_messages_lisp _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/srv/cup_camera.srv" NAME_WE)
add_dependencies(main2021_generate_messages_lisp _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/srv/goap_srv.srv" NAME_WE)
add_dependencies(main2021_generate_messages_lisp _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/srv/cup.srv" NAME_WE)
add_dependencies(main2021_generate_messages_lisp _main2021_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(main2021_genlisp)
add_dependencies(main2021_genlisp main2021_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS main2021_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/msg/missiontomain.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/main2021
)
_generate_msg_nodejs(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/msg/Data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/main2021
)
_generate_msg_nodejs(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/msg/position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/main2021
)
_generate_msg_nodejs(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/msg/plannerState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/main2021
)
_generate_msg_nodejs(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/msg/maintomission.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/main2021
)
_generate_msg_nodejs(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/msg/dataToAgent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/main2021
)

### Generating Services
_generate_srv_nodejs(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/srv/ns.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/main2021
)
_generate_srv_nodejs(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/srv/mission_srv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/main2021
)
_generate_srv_nodejs(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/srv/cup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/main2021
)
_generate_srv_nodejs(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/srv/cup_camera.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/main2021
)
_generate_srv_nodejs(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/srv/goap_srv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/main2021
)

### Generating Module File
_generate_module_nodejs(main2021
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/main2021
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(main2021_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(main2021_generate_messages main2021_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/msg/missiontomain.msg" NAME_WE)
add_dependencies(main2021_generate_messages_nodejs _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/srv/ns.srv" NAME_WE)
add_dependencies(main2021_generate_messages_nodejs _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/msg/Data.msg" NAME_WE)
add_dependencies(main2021_generate_messages_nodejs _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/srv/mission_srv.srv" NAME_WE)
add_dependencies(main2021_generate_messages_nodejs _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/msg/position.msg" NAME_WE)
add_dependencies(main2021_generate_messages_nodejs _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/msg/plannerState.msg" NAME_WE)
add_dependencies(main2021_generate_messages_nodejs _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/msg/maintomission.msg" NAME_WE)
add_dependencies(main2021_generate_messages_nodejs _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/msg/dataToAgent.msg" NAME_WE)
add_dependencies(main2021_generate_messages_nodejs _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/srv/cup_camera.srv" NAME_WE)
add_dependencies(main2021_generate_messages_nodejs _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/srv/goap_srv.srv" NAME_WE)
add_dependencies(main2021_generate_messages_nodejs _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/srv/cup.srv" NAME_WE)
add_dependencies(main2021_generate_messages_nodejs _main2021_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(main2021_gennodejs)
add_dependencies(main2021_gennodejs main2021_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS main2021_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/msg/missiontomain.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/main2021
)
_generate_msg_py(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/msg/Data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/main2021
)
_generate_msg_py(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/msg/position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/main2021
)
_generate_msg_py(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/msg/plannerState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/main2021
)
_generate_msg_py(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/msg/maintomission.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/main2021
)
_generate_msg_py(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/msg/dataToAgent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/main2021
)

### Generating Services
_generate_srv_py(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/srv/ns.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/main2021
)
_generate_srv_py(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/srv/mission_srv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/main2021
)
_generate_srv_py(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/srv/cup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/main2021
)
_generate_srv_py(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/srv/cup_camera.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/main2021
)
_generate_srv_py(main2021
  "/home/gogochiou/eudemo_ws/src/main2021/srv/goap_srv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/main2021
)

### Generating Module File
_generate_module_py(main2021
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/main2021
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(main2021_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(main2021_generate_messages main2021_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/msg/missiontomain.msg" NAME_WE)
add_dependencies(main2021_generate_messages_py _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/srv/ns.srv" NAME_WE)
add_dependencies(main2021_generate_messages_py _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/msg/Data.msg" NAME_WE)
add_dependencies(main2021_generate_messages_py _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/srv/mission_srv.srv" NAME_WE)
add_dependencies(main2021_generate_messages_py _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/msg/position.msg" NAME_WE)
add_dependencies(main2021_generate_messages_py _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/msg/plannerState.msg" NAME_WE)
add_dependencies(main2021_generate_messages_py _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/msg/maintomission.msg" NAME_WE)
add_dependencies(main2021_generate_messages_py _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/msg/dataToAgent.msg" NAME_WE)
add_dependencies(main2021_generate_messages_py _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/srv/cup_camera.srv" NAME_WE)
add_dependencies(main2021_generate_messages_py _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/srv/goap_srv.srv" NAME_WE)
add_dependencies(main2021_generate_messages_py _main2021_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gogochiou/eudemo_ws/src/main2021/srv/cup.srv" NAME_WE)
add_dependencies(main2021_generate_messages_py _main2021_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(main2021_genpy)
add_dependencies(main2021_genpy main2021_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS main2021_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/main2021)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/main2021
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(main2021_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(main2021_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/main2021)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/main2021
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(main2021_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(main2021_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/main2021)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/main2021
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(main2021_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(main2021_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/main2021)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/main2021
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(main2021_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(main2021_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/main2021)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/main2021\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/main2021
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(main2021_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(main2021_generate_messages_py std_msgs_generate_messages_py)
endif()
