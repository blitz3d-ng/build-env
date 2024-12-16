#!/bin/bash

set -e

LLVM_VERSION=19.1.5

wget https://github.com/blitz3d-ng/build-llvm/archive/refs/tags/v$LLVM_VERSION.tar.gz
tar xf v$LLVM_VERSION.tar.gz

(cd build-llvm-$LLVM_VERSION && ./build-llvm.sh $1 $2)
