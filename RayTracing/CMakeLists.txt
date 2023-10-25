add_library(RayTracingLib STATIC)

add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/src)

set(RAYTRACINGLIB_INCLUDE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/include)

target_include_directories(RayTracingLib PUBLIC
        ${RAYTRACINGLIB_INCLUDE_DIR}
)
