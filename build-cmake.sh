#!/bin/bash

set -e

##
# Standard script for installing cmake on all linux distros.
#
CMAKE_VERSION=3.26.4
wget https://github.com/Kitware/CMake/releases/download/v$CMAKE_VERSION/cmake-$CMAKE_VERSION-linux-x86_64.sh
bash cmake-$CMAKE_VERSION-linux-x86_64.sh --skip-license --prefix=/usr/local
rm cmake-$CMAKE_VERSION-linux-x86_64.sh
