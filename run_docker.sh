#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build --tag=app .
docker tag app thongnq2/dev-ops-project-5

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app
docker run -p 8080:8080 thongnq2/dev-ops-project-5