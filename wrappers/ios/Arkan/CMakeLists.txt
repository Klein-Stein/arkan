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

set(ARKAN_ROOT ../../..)

# Add an ARKAN's CMakeLists.txt
add_subdirectory(${ARKAN_ROOT} ${ARKAN_ROOT}/build EXCLUDE_FROM_ALL)

include_directories(${ARKAN_ROOT}/include)

set(CMAKE_C_FLAGS "-x objective-c")
set(CMAKE_CXX_FLAGS "-x objective-c++")
set(CMAKE_EXE_LINKER_FLAGS "-framework Foundation")

add_library(Arkan STATIC Sources/ObjC/Arkan.mm)

target_link_libraries(Arkan arkan)
target_include_directories(Arkan PUBLIC Sources/ObjC)
set_target_properties(Arkan PROPERTIES
  FRAMEWORK TRUE
  FRAMEWORK_VERSION CXX
  MACOSX_FRAMEWORK_IDENTIFIER com.KleinStein.Arkan
#   MACOSX_FRAMEWORK_INFO_PLIST Info.plist
  # "current version" in semantic format in Mach-O binary file
  VERSION 16.4.0
  # "compatibility version" in semantic format in Mach-O binary file
  SOVERSION 1.0.0
  PUBLIC_HEADER Sources/ObjC/Arkan.h
  XCODE_ATTRIBUTE_CODE_SIGN_IDENTITY "iPhone Developer"
)
# if(BUILD_TESTING)
#   add_subdirectory(Tests)
# endif()
