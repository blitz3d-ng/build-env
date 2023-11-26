#!/bin/sh

set -e

IMAGE=ghcr.io/blitz3d-ng/env
PLATFORMS=${1:-"debian-10 debian-11 ubuntu-20.04 ubuntu-22.04 archlinux android nx mingw emscripten"}
VERSION=v8

echo "Building $PLATFORMS..."

for platform in $PLATFORMS
do
  docker build -t $IMAGE:$platform-$VERSION -f Dockerfile.$platform .
done
