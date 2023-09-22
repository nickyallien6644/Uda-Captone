# Capstone Project

## Project Info:
### My website: 
[MyWebsite](http://ae52e4b93953846c8b3e53df4d72e359-719839978.us-west-2.elb.amazonaws.com/)
### My github: 
[GitHub](https://github.com/nickyallien6644/Uda-Captone)
### ci/cd pipelines: 
[![CircleCI](https://dl.circleci.com/status-badge/img/gh/nickyallien6644/Uda-Captone/tree/main.svg?style=svg&circle-token=14278455b07ed7b23061a287b62a3b05dce69834)](https://app.circleci.com/pipelines/github/nickyallien6644/Uda-Captone/5/workflows/eb8325d7-4cbe-4960-8428-71a399fedee6/jobs/6)

## Project Overview

With the help of CircleCI and an AWS EKS (Amazon Elastic Kubernetes Service) cluster, this project operationalizes a Python Flask example web application for my blog:

1. **Continuous Integration with CircleCI**: To automate the development workflow, we have put up a CircleCI pipeline.
   - To assure code quality, we carry out code linting in the pipeline.
   - The application's Docker image is created.
   - For simple access and deployment, the Docker image is next posted to a public Docker Registry, especially Docker Hub.

2. **Kubernetes Deployment on AWS EKS**: We use AWS EKS to administer our Kubernetes cluster.
   - We set up and execute the Flask application within the EKS cluster. This enables us to manage, scale, and orchestrate containers using Kubernetes.

3. **Production Deployment and Rolling Updates**: - We use a rolling update method when it's time to push a new version of the application to production.
   - We employ a rolling update method when it's time to promote a new version of the application to production.
   - This guarantees less downtime and easy switching between versions of the program.
   - This update's orchestration is done using Kubernetes.

4. **Makefile and Shell Scripts**: 
   - We have arranged the numerous activities in this project into a Makefile to simplify and automate them. 
   - The execution of duties and project management are made easier by this organized approach.

We have built a solid workflow for building, testing, and deploying the "hello" Flask application using CircleCI, AWS EKS, Docker Hub, and Kubernetes, assuring effective development and production deployment procedures.

## Tasks

This project follows a CI/CD methodology to build a Docker image and deploy it to a Kubernetes cluster. Here are the key tasks within the project:

1. **Environment Setup**:
   - Create a virtual Python environment. create setup
   - Use the `make install` command to install all required dependencies.

2. **Code Quality Assurance**:
   - Lint the project's code to check for errors.
   - `make lint` Python code, Dockerfile, and shell scripts

3. **Docker Image Creation**:
   - Create a Dockerfile to containerize the "hello" application: `Dockerfile`

4. **Docker Image Deployment**:
   - Deploy the containerized application to a public Docker Registry, specifically Docker Hub.

5. **Kubernetes Cluster Deployment**:
   - Use the command `make create-cluster` to deploy a Kubernetes cluster.

6. **Application Deployment in Kubernetes**:
   - Make the application available to the Kubernetes cluster by using the `make deployment` command.

7. **Rolling Updates**:
   - Implement an update strategy for the application within the cluster using a rolling-update approach: `make rolling`


This CI/CD project automates the entire software development lifecycle, from code quality checks to deployment in a Kubernetes cluster, ensuring efficient development and deployment processes.

## CI/CD Tools and Cloud Services:

1. **Circle CI**: A cloud-based CI/CD service.
2. **Amazon AWS**: A provider of cloud services.
3. **AWS EKS**: Amazon Elastic Kubernetes Service, a managed Kubernetes service.
4. **AWS eksctl**: The official CLI tool for Amazon EKS.
5. **AWS CLI**: A command-line tool for interacting with AWS services.
6. **CloudFormation**: An Infrastructure as Code service for AWS.
7. **kubectl**: A command-line tool for controlling Kubernetes clusters.
8. **Docker Hub**: A container image repository service.

## Main files

```shell
├── app
│   ├── app.py
│   ├── Dockerfile
│   ├── requirements.txt
│   └── templates
│       └── index.html
├── setup
│   ├── install-dependencies.sh
│   ├── install-docker.sh
│   ├── install-eksctl.sh
│   ├── install-hadolint.sh
│   ├── install-kubectl.sh
├── run
│   ├── cleanup.sh
│   ├── create-cluster.sh
│   ├── deployment.sh
│   ├── rolling.sh
│   ├── install-kubectl.sh
│   ├── lint.sh
│   ├── build-docker.sh
│   ├── forwarding.sh
│   ├── test.sh
│   ├── rollback.sh
│   ├── run-docker.sh
├── Makefile
├── README.md
```

The Makefile triggers the execution of the following shell scripts:

```create-cluster.sh```: creates the EKS cluster

```install-eksctl.sh```: installs the eksctl tool

```install-kubectl.sh```: installs the kubectl tool

```create-cluster.sh```: Create cluster

```deployment.sh```: deploys and exposes a service in the K8S cluster
