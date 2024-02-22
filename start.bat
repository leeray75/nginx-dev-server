@echo off
setlocal

REM Load environment variables from .env.local file
if exist .env.local (
    call .env.local
)

REM Static part of the path
set "STATIC_PATH=/usr/share/projects/promo"

REM Full path by concatenating static and dynamic parts
set "FULL_PATH=%PROJECTS_PATH%:%STATIC_PATH%"

REM Build the Docker image
docker build -t nginx-dev-server .

REM Stop the running container if it exists
docker stop nginx-dev-server

REM Remove the stopped container if it exists
docker rm nginx-dev-server

REM Run the Docker container with the specified volume
docker run -d -p 8080:8080 --name nginx-dev-server -v "%FULL_PATH%" nginx-dev-server
