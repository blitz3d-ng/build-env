#!/bin/sh

set -e

IMAGE=ghcr.io/blitz3d-ng/env

for platform in android debian-10 debian-11 ubuntu-21.04 ubuntu-22.04 nx mingw emscripten
do
  docker build -t $IMAGE:$platform --build-arg RUBY_VERSION=3.1.2 --build-arg RUBY_INSTALL_VERSION=0.8.3 - < Dockerfile.$platform
done
