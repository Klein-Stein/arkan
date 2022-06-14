set(triple  x86_64-windows-gnu)
set(llvm    /opt/homebrew/Cellar/llvm/13.0.1_1)

set(CMAKE_SYSTEM_NAME           Windows)
set(CMAKE_SYSTEM_PROCESSOR      x86_64)
set(CMAKE_C_COMPILER            ${llvm}/bin/clang)
set(CMAKE_C_COMPILER_TARGET     ${triple})
set(CMAKE_CXX_COMPILER          ${llvm}/bin/clang++)
set(CMAKE_CXX_COMPILER_TARGET   ${triple})

SET(CMAKE_AR      ${llvm}/bin/llvm-ar)
SET(CMAKE_LINKER  ${llvm}/bin/llvm-ld)
SET(CMAKE_NM      ${llvm}/bin/llvm-nm)
SET(CMAKE_OBJDUMP ${llvm}/bin/llvm-objdump)
SET(CMAKE_RANLIB  ${llvm}/bin/llvm-ranlib)
