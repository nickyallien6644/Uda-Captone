#!/bin/bash

is_exist=$(kubectl config get-contexts | awk '{print $3}' | grep "$CLUSTER")

if [ -n "$is_exist" ]; then
    echo "Cluster '${CLUSTER}' already exists!"
else
    echo "Creating cluster..."
    eksctl create cluster --name "$CLUSTER" --region="$REGION" --nodes-min=2 --nodes-max=3
fi
