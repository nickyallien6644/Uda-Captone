#! /bin/bash
echo "BUILD DOCKER: $DOCKER_IMAGE"
docker build --tag $DOCKER_IMAGE app