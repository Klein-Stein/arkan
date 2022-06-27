cmake_minimum_required(VERSION 3.15.1)

project(Arkan LANGUAGES CXX C Swift)

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

set(ARKAN_ROOT ../../..)

# Add an ARKAN's CMakeLists.txt
add_subdirectory(${ARKAN_ROOT} ${ARKAN_ROOT}/build EXCLUDE_FROM_ALL)

include_directories(${ARKAN_ROOT}/include)

set(CMAKE_C_FLAGS "-x objective-c")
set(CMAKE_CXX_FLAGS "-x objective-c++")
set(CMAKE_EXE_LINKER_FLAGS "-framework Foundation")
set(CMAKE_Swift_FLAGS "${CMAKE_Swift_FLAGS} -import-objc-header Sources/ArkanObjC-Bridging-Header.h" )


set(SRCS Sources/Arkan.mm Sources/Arkan.swift)

add_library(Arkan STATIC ${SRCS})

target_link_libraries(Arkan arkan)
target_include_directories(Arkan PUBLIC Sources)


install(TARGETS Arkan DESTINATION ${CMAKE_CURRENT_BINARY_DIR}/lib)
