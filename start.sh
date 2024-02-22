#!/bin/bash

# Load environment variables from .env.local file
if [[ -f .env.local ]]; then
    source .env.local
fi

# Static part of the path
STATIC_PATH="/usr/share/projects/promo"

# Full path by concatenating static and dynamic parts
FULL_PATH="$PROJECTS_PATH:$STATIC_PATH"

# Build the Docker image
docker build -t nginx-dev-server .

# Stop the running container if it exists
docker stop nginx-dev-server

# Remove the stopped container if it exists
docker rm nginx-dev-server

# Run the Docker container with the specified volume
docker run -d -p 8080:8080 --name nginx-dev-server -v "$FULL_PATH" nginx-dev-server
