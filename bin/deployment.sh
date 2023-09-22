#! /bin/bash
echo "$DOCKER_USERNAME/$DOCKER_IMAGE:$DOCKER_TAG"
kubectl create deployment $DEPLOYMENT_NAME --image="$DOCKER_USERNAME/$DOCKER_IMAGE:$DOCKER_TAG" --replicas=4 && \
kubectl expose "deployment/$DEPLOYMENT_NAME" --type="LoadBalancer" --port 80
echo "DEPLOYMENT"
kubectl get deployments -o wide
echo "SERVICES"
kubectl get services -o wide
echo "PODS"
kubectl get pods -o wide
