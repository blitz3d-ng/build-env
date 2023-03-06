#!/bin/sh

set -e

IMAGE=ghcr.io/blitz3d-ng/env
PLATFORMS=${1:-"debian-10 debian-11 ubuntu-20.04 ubuntu-22.04 android nx mingw emscripten"}

echo "Building $PLATFORMS..."

for platform in $PLATFORMS
do
  docker build -t $IMAGE:$platform -f Dockerfile.$platform .
done
