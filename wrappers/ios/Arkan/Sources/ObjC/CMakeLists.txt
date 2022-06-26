set(ARKAN_ROOT ../../../../..)

# Add an ARKAN's CMakeLists.txt
add_subdirectory(${ARKAN_ROOT} ${ARKAN_ROOT}/build EXCLUDE_FROM_ALL)

include_directories(${ARKAN_ROOT}/include)

set(CMAKE_C_FLAGS "-x objective-c")
set(CMAKE_CXX_FLAGS "-x objective-c++")
set(CMAKE_EXE_LINKER_FLAGS "-framework Foundation")

add_library(carkan STATIC Arkan.mm)

target_link_libraries(carkan arkan)
target_include_directories(arkan PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

install(TARGETS arkan
  ARCHIVE DESTINATION lib
  LIBRARY DESTINATION lib
  RUNTIME DESTINATION bin)