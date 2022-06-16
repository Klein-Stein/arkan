cmake_minimum_required(VERSION 3.9)

project(Arkan VERSION 0.1.0 DESCRIPTION "Cross-platform AR engine")

# Specify the C++ standard
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Build the native Arkan library
add_library(arkan SHARED
    lib/greeting.cpp
)
set_target_properties(arkan PROPERTIES VERSION ${PROJECT_VERSION})
set_target_properties(arkan PROPERTIES SOVERSION 0)
set_target_properties(arkan PROPERTIES PUBLIC_HEADER include/arkan.hpp)
