#! /bin/bash
kubectl get deployments -o wide
kubectl rollout undo deployment devoops-capstone
kubectl describe pods | grep -i image
kubectl get pods -o wide
kubectl get deployments -o wide