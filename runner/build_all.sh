#!/bin/bash
set -e

for d in */ ; do
    pushd "$d"
      docker build -t "bazooka/runner-golang:${d%?}" .
    popd
done
