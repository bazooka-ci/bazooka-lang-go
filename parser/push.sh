#!/bin/bash

set -e

if [ -n "$DO_PUSH" ]; then
  docker login -e "$DOCKER_EMAIL" -p "$DOCKER_PASSWORD" -u "$DOCKER_USERNAME"
  image="bazooka/parser-golang"
  if [ -n "$BZK_VERSION" ]; then
    docker tag "$image" "$image:$BZK_VERSION"
    image="$image:$BZK_VERSION"
  fi
  docker push "$image"
else
  echo "Variable DO_PUSH not defined, skipping docker push"
fi
