cmake_minimum_required(VERSION 3.26)


if(${CMAKE_VERSION} VERSION_LESS 3.12)
  cmake_policy(VERSION ${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION})
endif()

project(HasbuRayTracing)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)


if(CMAKE_BUILD_TYPE MATCHES Debug)
  add_definitions(-DDEBUG=1)
endif()
#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O0 -Wall -Wextra -fno-omit-frame-pointer -fstack-protector")


add_subdirectory(RayTracing)
add_executable(${PROJECT_NAME} RayTracing/main.cpp)
target_link_libraries(${PROJECT_NAME} PUBLIC RayTracingLib)

