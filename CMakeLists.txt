cmake_minimum_required(VERSION 3.21)
project(llvm-build)

set (CMAKE_CXX_STANDARD 14)
set(CMAKE_INSTALL_PREFIX /opt/llvm)

# customize for our needs.
set(LLVM_ENABLE_PROJECTS  "lld" CACHE STRING "" FORCE)
set(LLVM_ENABLE_RUNTIMES  "" CACHE STRING "" FORCE)
set(LLVM_TARGETS_TO_BUILD "AArch64;ARM;WebAssembly;X86" CACHE STRING "" FORCE)
set(LLVM_HAVE_LIBXAR OFF CACHE BOOLEAN "" FORCE)

add_subdirectory(llvm)
