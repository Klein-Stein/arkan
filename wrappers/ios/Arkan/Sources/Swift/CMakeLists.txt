add_library(Arkan Arkan.swift)

target_link_libraries(Arkan PRIVATE carkan)

set_target_properties(Arkan PROPERTIES INTERFACE_INCLUDE_DIRECTORIES ${CMAKE_Swift_MODULE_DIRECTORY})

install(TARGETS Arkan
  ARCHIVE DESTINATION lib
  LIBRARY DESTINATION lib
  RUNTIME DESTINATION bin
  COMPONENT lib)