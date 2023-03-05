#!/bin/bash

set -e

##
# Standard script for installing cmake on all linux distros.
#
wget https://github.com/Kitware/CMake/releases/download/v3.21.2/cmake-3.21.2-linux-x86_64.sh
bash cmake-3.21.2-linux-x86_64.sh --skip-license --prefix=/usr/local
rm cmake-3.21.2-linux-x86_64.sh
