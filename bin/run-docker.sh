#! /bin/bash
echo "RUN DOCKER"
docker run -t --rm -p 80:80 $DOCKER_IMAGE