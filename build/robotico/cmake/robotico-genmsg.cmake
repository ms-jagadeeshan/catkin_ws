# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "robotico: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(robotico_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/jaga_matrix/catkin_ws/src/robotico/srv/string_msg.srv" NAME_WE)
add_custom_target(_robotico_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotico" "/home/jaga_matrix/catkin_ws/src/robotico/srv/string_msg.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(robotico
  "/home/jaga_matrix/catkin_ws/src/robotico/srv/string_msg.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotico
)

### Generating Module File
_generate_module_cpp(robotico
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotico
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(robotico_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(robotico_generate_messages robotico_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jaga_matrix/catkin_ws/src/robotico/srv/string_msg.srv" NAME_WE)
add_dependencies(robotico_generate_messages_cpp _robotico_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotico_gencpp)
add_dependencies(robotico_gencpp robotico_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotico_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(robotico
  "/home/jaga_matrix/catkin_ws/src/robotico/srv/string_msg.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotico
)

### Generating Module File
_generate_module_eus(robotico
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotico
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(robotico_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(robotico_generate_messages robotico_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jaga_matrix/catkin_ws/src/robotico/srv/string_msg.srv" NAME_WE)
add_dependencies(robotico_generate_messages_eus _robotico_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotico_geneus)
add_dependencies(robotico_geneus robotico_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotico_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(robotico
  "/home/jaga_matrix/catkin_ws/src/robotico/srv/string_msg.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotico
)

### Generating Module File
_generate_module_lisp(robotico
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotico
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(robotico_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(robotico_generate_messages robotico_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jaga_matrix/catkin_ws/src/robotico/srv/string_msg.srv" NAME_WE)
add_dependencies(robotico_generate_messages_lisp _robotico_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotico_genlisp)
add_dependencies(robotico_genlisp robotico_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotico_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(robotico
  "/home/jaga_matrix/catkin_ws/src/robotico/srv/string_msg.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotico
)

### Generating Module File
_generate_module_nodejs(robotico
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotico
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(robotico_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(robotico_generate_messages robotico_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jaga_matrix/catkin_ws/src/robotico/srv/string_msg.srv" NAME_WE)
add_dependencies(robotico_generate_messages_nodejs _robotico_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotico_gennodejs)
add_dependencies(robotico_gennodejs robotico_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotico_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(robotico
  "/home/jaga_matrix/catkin_ws/src/robotico/srv/string_msg.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotico
)

### Generating Module File
_generate_module_py(robotico
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotico
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(robotico_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(robotico_generate_messages robotico_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jaga_matrix/catkin_ws/src/robotico/srv/string_msg.srv" NAME_WE)
add_dependencies(robotico_generate_messages_py _robotico_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotico_genpy)
add_dependencies(robotico_genpy robotico_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotico_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotico)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotico
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(robotico_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(robotico_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotico)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotico
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(robotico_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(robotico_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotico)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotico
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(robotico_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(robotico_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotico)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotico
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(robotico_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(robotico_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotico)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotico\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotico
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(robotico_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(robotico_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
