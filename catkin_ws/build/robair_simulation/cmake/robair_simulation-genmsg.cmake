# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "robair_simulation: 1 messages, 0 services")

set(MSG_I_FLAGS "-Irobair_simulation:/home/laguerre/Documents/ENSIMAG/S4/fablab/robair/robair_simulation_ROS/catkin_ws/src/robair_simulation/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(robair_simulation_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/laguerre/Documents/ENSIMAG/S4/fablab/robair/robair_simulation_ROS/catkin_ws/src/robair_simulation/msg/collision_event.msg" NAME_WE)
add_custom_target(_robair_simulation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robair_simulation" "/home/laguerre/Documents/ENSIMAG/S4/fablab/robair/robair_simulation_ROS/catkin_ws/src/robair_simulation/msg/collision_event.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(robair_simulation
  "/home/laguerre/Documents/ENSIMAG/S4/fablab/robair/robair_simulation_ROS/catkin_ws/src/robair_simulation/msg/collision_event.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robair_simulation
)

### Generating Services

### Generating Module File
_generate_module_cpp(robair_simulation
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robair_simulation
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(robair_simulation_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(robair_simulation_generate_messages robair_simulation_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/laguerre/Documents/ENSIMAG/S4/fablab/robair/robair_simulation_ROS/catkin_ws/src/robair_simulation/msg/collision_event.msg" NAME_WE)
add_dependencies(robair_simulation_generate_messages_cpp _robair_simulation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robair_simulation_gencpp)
add_dependencies(robair_simulation_gencpp robair_simulation_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robair_simulation_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(robair_simulation
  "/home/laguerre/Documents/ENSIMAG/S4/fablab/robair/robair_simulation_ROS/catkin_ws/src/robair_simulation/msg/collision_event.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robair_simulation
)

### Generating Services

### Generating Module File
_generate_module_lisp(robair_simulation
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robair_simulation
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(robair_simulation_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(robair_simulation_generate_messages robair_simulation_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/laguerre/Documents/ENSIMAG/S4/fablab/robair/robair_simulation_ROS/catkin_ws/src/robair_simulation/msg/collision_event.msg" NAME_WE)
add_dependencies(robair_simulation_generate_messages_lisp _robair_simulation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robair_simulation_genlisp)
add_dependencies(robair_simulation_genlisp robair_simulation_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robair_simulation_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(robair_simulation
  "/home/laguerre/Documents/ENSIMAG/S4/fablab/robair/robair_simulation_ROS/catkin_ws/src/robair_simulation/msg/collision_event.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robair_simulation
)

### Generating Services

### Generating Module File
_generate_module_py(robair_simulation
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robair_simulation
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(robair_simulation_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(robair_simulation_generate_messages robair_simulation_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/laguerre/Documents/ENSIMAG/S4/fablab/robair/robair_simulation_ROS/catkin_ws/src/robair_simulation/msg/collision_event.msg" NAME_WE)
add_dependencies(robair_simulation_generate_messages_py _robair_simulation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robair_simulation_genpy)
add_dependencies(robair_simulation_genpy robair_simulation_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robair_simulation_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robair_simulation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robair_simulation
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(robair_simulation_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robair_simulation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robair_simulation
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(robair_simulation_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robair_simulation)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robair_simulation\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robair_simulation
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(robair_simulation_generate_messages_py std_msgs_generate_messages_py)
