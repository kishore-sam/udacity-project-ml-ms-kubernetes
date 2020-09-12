#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=mydocker16121985/project

# Step 2:
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username=mydocker16121985
docker tag project "$dockerpath":version1.0

# Step 3:
# Push image to a docker repository
docker push "$dockerpath":version1.0

