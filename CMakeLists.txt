cmake_minimum_required(VERSION 3.5)

project(mission_msgs)

if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 20)
endif()

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic -Werror)
endif()

find_package(ament_cmake REQUIRED)
find_package(std_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)

find_package(builtin_interfaces REQUIRED)
find_package(rosidl_default_generators REQUIRED)

set(msg_files
 "msg/Zone.msg"
 "msg/Task.msg"
 "msg/Mission.msg"
 "msg/Description.msg"
)

rosidl_generate_interfaces(${PROJECT_NAME} ${msg_files}
 DEPENDENCIES std_msgs geometry_msgs builtin_interfaces
)


ament_export_dependencies(rosidl_default_runtime)
ament_package()
