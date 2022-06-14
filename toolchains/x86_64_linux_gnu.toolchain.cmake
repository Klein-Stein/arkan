set(triple  x86_64-linux-gnu)
set(llvm    /opt/homebrew/Cellar/llvm/13.0.1_1)

set(CMAKE_SYSTEM_NAME       Linux)
set(CMAKE_SYSTEM_PROCESSOR  x86_64)

set(CMAKE_IGNORE_PATH                       /Applications/Xcode.app)
set(CMAKE_PREFIX_PATH                       ${llvm})

set(CMAKE_C_COMPILER                        ${llvm}/bin/clang)
set(CMAKE_C_COMPILER_TARGET                 ${triple})
# set(CMAKE_C_STANDARD_LIBRARIES              ${llvm}/lib)
# set(CMAKE_C_STANDARD_INCLUDE_DIRECTORIES    ${llvm}/include/c++/v1)
set(CMAKE_C_FLAGS                           "-fuse-ld=lld")
# set(CMAKE_C_LINK_EXECUTABLE                 "${llvm}/bin/ld.lld <FLAGS> <CMAKE_C_LINK_FLAGS> <LINK_FLAGS> <OBJECTS> -o <TARGET> <LINK_LIBRARIES>")

set(CMAKE_CXX_COMPILER                      ${llvm}/bin/clang++)
set(CMAKE_CXX_COMPILER_TARGET               ${triple})
# set(CMAKE_CXX_STANDARD_LIBRARIES            ${llvm}/lib)
# set(CMAKE_CXX_STANDARD_INCLUDE_DIRECTORIES  ${llvm}/include/clang)
set(CMAKE_CXX_FLAGS                         "-fuse-ld=lld")
# set(CMAKE_CXX_LINK_EXECUTABLE               "${llvm}/bin/ld.lld <FLAGS> <CMAKE_CXX_LINK_FLAGS> <LINK_FLAGS> <OBJECTS> -o <TARGET> <LINK_LIBRARIES>")

# set(CMAKE_EXE_LINKER_FLAGS_INIT "-fuse-ld=lld")
# set(CMAKE_MODULE_LINKER_FLAGS_INIT "-fuse-ld=lld")
# set(CMAKE_SHARED_LINKER_FLAGS_INIT "-fuse-ld=lld")

# set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
# set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
# set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
# set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

# SET(CMAKE_AR      ${llvm}/bin/llvm-ar)
# SET(CMAKE_LINKER  ${llvm}/bin/llvm-link)
# SET(CMAKE_NM      ${llvm}/bin/llvm-nm)
# SET(CMAKE_OBJDUMP ${llvm}/bin/llvm-objdump)
# SET(CMAKE_RANLIB  ${llvm}/bin/llvm-ranlib)
