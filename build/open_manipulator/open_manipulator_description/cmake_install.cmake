# Install script for directory: /home/jaga_matrix/catkin_ws/src/open_manipulator/open_manipulator_description

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/jaga_matrix/catkin_ws/install")
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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/jaga_matrix/catkin_ws/build/open_manipulator/open_manipulator_description/catkin_generated/installspace/open_manipulator_description.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/open_manipulator_description/cmake" TYPE FILE FILES
    "/home/jaga_matrix/catkin_ws/build/open_manipulator/open_manipulator_description/catkin_generated/installspace/open_manipulator_descriptionConfig.cmake"
    "/home/jaga_matrix/catkin_ws/build/open_manipulator/open_manipulator_description/catkin_generated/installspace/open_manipulator_descriptionConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/open_manipulator_description" TYPE FILE FILES "/home/jaga_matrix/catkin_ws/src/open_manipulator/open_manipulator_description/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/open_manipulator_description" TYPE DIRECTORY FILES
    "/home/jaga_matrix/catkin_ws/src/open_manipulator/open_manipulator_description/launch"
    "/home/jaga_matrix/catkin_ws/src/open_manipulator/open_manipulator_description/meshes"
    "/home/jaga_matrix/catkin_ws/src/open_manipulator/open_manipulator_description/rviz"
    "/home/jaga_matrix/catkin_ws/src/open_manipulator/open_manipulator_description/urdf"
    )
endif()

