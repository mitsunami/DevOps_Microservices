#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=kmitsunami/mlservice

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username kmitsunami
docker tag f7b102e8aa4b kmitsunami/mlservice:latest

# Step 3:
# Push image to a docker repository
docker push kmitsunami/mlservice:latest