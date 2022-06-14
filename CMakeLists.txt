cmake_minimum_required(VERSION 3.9)

project(Arkan VERSION 0.1.0 DESCRIPTION "Cross-platform AR engine")

# set(BUILDDIR build)

# set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/${BUILDDIR})
# set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/${BUILDDIR})
# set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/${BUILDDIR})

# Specify the C++ standard
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Build the native Arkan library
add_library(arkan SHARED
    lib/cpp/greeting.cpp
)
set_target_properties(arkan PROPERTIES VERSION ${PROJECT_VERSION})
set_target_properties(arkan PROPERTIES SOVERSION 0)
set_target_properties(arkan PROPERTIES PUBLIC_HEADER lib/cpp/include/arkan.hpp)
