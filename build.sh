#!/bin/sh

set -e

IMAGE=ghcr.io/blitz3d-ng/env

for platform in android debian-10 debian-11 nx mingw emscripten
do
  docker build -t $IMAGE:$platform - < Dockerfile.$platform
done
