cmake_minimum_required(VERSION 3.15.1)

project(Arkan LANGUAGES CXX C)

# enable shared libraries by default (Windows, Darwin)
#
# Windows does not yet support static libraries in Swift, Darwin no longer
# supports static libraries after ABI stability.
if(CMAKE_SYSTEM_NAME STREQUAL Windows OR CMAKE_SYSTEM_NAME STREQUAL Darwin)
  option(BUILD_SHARED_LIBS "Build shared libraries by default" YES)
endif()

# enable testing by default on debug mode
if(CMAKE_BUILD_TYPE STREQUAL Debug)
  option(BUILD_TESTING "Build tests" YES)
endif()

add_subdirectory(Sources)
# if(BUILD_TESTING)
#   add_subdirectory(Tests)
# endif()
