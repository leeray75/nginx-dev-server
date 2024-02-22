# Dockerfile README

This README provides an explanation of the Dockerfile provided, which sets up an NGINX server with SSL configuration.

## Overview

The Dockerfile installs NGINX and OpenSSL, generates SSL certificates, copies a custom NGINX configuration file, and exposes port 8080 for HTTPS traffic.

## Dockerfile Details

### Base Image

- `FROM nginx:latest`: Uses the latest NGINX image as the base image.

### Installation and Setup

- `RUN apt-get update && apt-get install -y openssl`: Updates package lists and installs OpenSSL for SSL certificate generation.
- `RUN mkdir -p /etc/nginx/ssl`: Creates a directory to store SSL certificates.
- `RUN openssl req -new -newkey rsa:2048 -days 365 -nodes -x509 \`: Generates SSL certificates with specified options:
    - `-subj "/CN=localhost.example.com"`: Sets the Common Name (CN) for the SSL certificate.
    - `-keyout /etc/nginx/ssl/server.key`: Specifies the path for the private key file.
    - `-out /etc/nginx/ssl/server.crt`: Specifies the path for the certificate file.

### Configuration

- `COPY nginx.conf /etc/nginx/nginx.conf`: Copies a custom NGINX configuration file (`nginx.conf`) to the container's NGINX configuration directory.

### Exposed Ports

- `EXPOSE 8080`: Exposes port 8080 to allow HTTPS traffic.

## Usage

1. Ensure Docker is installed on your system.
2. Create a `nginx.conf` file if not provided and configure it as per your requirements.
3. Copy the provided Dockerfile into your project directory.
4. Build the Docker image using the command `docker build -t my-nginx-image .`.
5. Run a container using the built image: `docker run -d -p 8080:8080 my-nginx-image`.

## Notes

- Replace `/CN=localhost.example.com` with your desired Common Name for the SSL certificate.
- Customize the NGINX configuration file (`nginx.conf`) as needed before building the Docker image.
- Adjust the exposed port (`8080`) in the Dockerfile and `docker run` command as required.

```

This README provides an explanation of the Dockerfile provided, which sets up an NGINX server with SSL configuration.

## Overview

The Dockerfile installs NGINX and OpenSSL, generates SSL certificates, copies a custom NGINX configuration file, and exposes port 8080 for HTTPS traffic.

## Dockerfile Details

### Base Image

- `FROM nginx:latest`: Uses the latest NGINX image as the base image.

### Installation and Setup

- `RUN apt-get update && apt-get install -y openssl`: Updates package lists and installs OpenSSL for SSL certificate generation.
- `RUN mkdir -p /etc/nginx/ssl`: Creates a directory to store SSL certificates.
- `RUN openssl req -new -newkey rsa:2048 -days 365 -nodes -x509 \`: Generates SSL certificates with specified options:
    - `-subj "/CN=localhost.example.com"`: Sets the Common Name (CN) for the SSL certificate.
    - `-keyout /etc/nginx/ssl/server.key`: Specifies the path for the private key file.
    - `-out /etc/nginx/ssl/server.crt`: Specifies the path for the certificate file.

### Configuration

- `COPY nginx.conf /etc/nginx/nginx.conf`: Copies a custom NGINX configuration file (`nginx.conf`) to the container's NGINX configuration directory.

### Exposed Ports

- `EXPOSE 8080`: Exposes port 8080 to allow HTTPS traffic.

## Usage

1. Ensure Docker is installed on your system.
2. Create a `nginx.conf` file if not provided and configure it as per your requirements.
3. Copy the provided Dockerfile into your project directory.
4. Build the Docker image using the command `docker build -t my-nginx-image .`.
5. Run a container using the built image: `docker run -d -p 8080:8080 my-nginx-image`.

## Notes

- Replace `/CN=localhost.example.com` with your desired Common Name for the SSL certificate.
- Customize the NGINX configuration file (`nginx.conf`) as needed before building the Docker image.
- Adjust the exposed port (`8080`) in the Dockerfile and `docker run` command as required.

