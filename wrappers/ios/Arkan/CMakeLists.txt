project("arkan")

set(ARKAN_ROOT ../../..)

# Add an ARKAN's CMakeLists.txt
add_subdirectory(${ARKAN_ROOT} ${ARKAN_ROOT}/build EXCLUDE_FROM_ALL)

include_directories(${ARKAN_ROOT}/include)

add_library(Arkan Sources/Swift/Arkan.swift)

target_compile_options(Arkan PRIVATE $<$<BOOL:BUILD_TESTING>:-enable-testing>)

target_link_libraries(Arkan PRIVATE arkan)

set_target_properties(Arkan PROPERTIES INTERFACE_INCLUDE_DIRECTORIES ${CMAKE_Swift_MODULE_DIRECTORY})
