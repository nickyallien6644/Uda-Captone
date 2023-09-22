#!/bin/bash

# Set environment variables
export REGION="us-west-2"
export CLUSTER="capstone"
export DOCKER_IMAGE="devoops-capstone"
export DOCKER_USERNAME="huavinh1901"
export DOCKER_PASSWORD=""
export DOCKER_TAG="v2"
export DEPLOYMENT_NAME="devoops-capstone"
export NEW_IMAGE_NAME="registry.hub.docker.com/$DOCKER_USERNAME/$DOCKER_IMAGE:latest"

echo "Environment variables set:"
echo "REGION: $REGION"
echo "CLUSTER: $CLUSTER"
echo "DOCKER_IMAGE: $DOCKER_IMAGE"
echo "DOCKER_USERNAME: $DOCKER_USERNAME"
echo "DOCKER_PASSWORD: $DOCKER_PASSWORD"
echo "DOCKER_TAG: $DOCKER_TAG"
echo "DEPLOYMENT_NAME: $DEPLOYMENT_NAME"
echo "NEW_IMAGE_NAME: $NEW_IMAGE_NAME"
