#!/bin/bash

set -e

##
# Standard script for building LLVM on all linux distros.
#
LLVM_VERSION=14.0.4

wget https://github.com/llvm/llvm-project/archive/refs/tags/llvmorg-$LLVM_VERSION.tar.gz
tar xf llvmorg-$LLVM_VERSION.tar.gz

cmake -S llvm-project-llvmorg-$LLVM_VERSION/llvm -B /build/llvm \
    -GNinja \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=/opt/llvm \
    -DCMAKE_CXX_STANDARD=14 \
    -DLLVM_ENABLE_PROJECTS=lld \
    -DLLVM_ENABLE_RUNTIMES="" \
    -DLLVM_TARGETS_TO_BUILD="AArch64;ARM;WebAssembly;X86" \
    -DLLVM_HAVE_LIBXAR=OFF

cmake --build /build/llvm
cmake --install /build/llvm

rm -rf /build/llvm
