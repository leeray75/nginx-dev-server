# NGINX Configuration README

This README provides an overview of the NGINX configuration file provided.

## Overview
The provided NGINX configuration file sets up servers for different environments (QA and Staging) to serve static content, API requests, and application content.

## Configuration Details

### Global Settings
- `events`: Default event loop configuration.

### HTTP Settings
- `log_format custom_log`: Defines a custom log format for logging requests.
- Configuration for QA environment:
  - Image/Static Content Server (`img.localhost.qa.example.com`)
  - API Server (`api.localhost.qa.example.com`)
  - App Server (`www.localhost.qa.example.com`)
- Configuration for Staging environment:
  - Image/Static Content Server (`img.localhost.staging.example.com`)
  - API Server (`api.localhost.staging.example.com`)
  - App Server (`www.localhost.staging.example.com`)

### Server Blocks
#### Image / Static Content Server
- Listens on port 8080 with SSL enabled.
- Serves static content from specified paths.
- Sets custom log format.
- Defines MIME types for various file extensions.

#### API Server
- Listens on port 8080 with SSL enabled.
- Proxies requests to the corresponding API servers.
- Handles CORS headers.
- Forwards specific headers and modifies others.
- Handles OPTIONS requests.

#### App Server
- Listens on port 8080 with SSL enabled.
- Proxies requests to the corresponding application servers.
- Preserves original headers, handles redirects, and modifies headers as needed.
- Enables response body substitution.
- Handles custom error pages.

### Customization
- SSL certificates and keys are specified for each server block.
- Logging is configured to write access logs to `/var/log/nginx/access.log`.
- Various headers are set or hidden based on requirements.
- Response body substitution is enabled for modifying response content.

## Usage
1. Ensure NGINX is installed on your system.
2. Replace placeholder values (e.g., `example.com`, `some-path`, paths to SSL certificates) with your actual configurations.
3. Copy the provided configuration into your NGINX configuration file (e.g., `/etc/nginx/nginx.conf`).
4. Restart NGINX to apply the changes (`sudo service nginx restart`).

## Notes
- Ensure SSL certificates and keys are correctly configured for secure connections.
- Verify paths and URLs to ensure proper functioning of proxies and static content servers.
- Adjust CORS settings as per your application requirements.

```
This README provides an overview of the NGINX configuration file provided.

## Configuration Details

### Global Settings
- `events`: Default event loop configuration.

### HTTP Settings
- `log_format custom_log`: Defines a custom log format for logging requests.
- Configuration for QA environment:
  - Image/Static Content Server (`img.localhost.qa.example.com`)
  - API Server (`api.localhost.qa.example.com`)
  - App Server (`www.localhost.qa.example.com`)
- Configuration for Staging environment:
  - Image/Static Content Server (`img.localhost.staging.example.com`)
  - API Server (`api.localhost.staging.example.com`)
  - App Server (`www.localhost.staging.example.com`)

### Server Blocks
#### Image / Static Content Server
- Listens on port 8080 with SSL enabled.
- Serves static content from specified paths.
- Sets custom log format.
- Defines MIME types for various file extensions.

#### API Server
- Listens on port 8080 with SSL enabled.
- Proxies requests to the corresponding API servers.
- Handles CORS headers.
- Forwards specific headers and modifies others.
- Handles OPTIONS requests.

#### App Server
- Listens on port 8080 with SSL enabled.
- Proxies requests to the corresponding application servers.
- Preserves original headers, handles redirects, and modifies headers as needed.
- Enables response body substitution.
- Handles custom error pages.

### Customization
- SSL certificates and keys are specified for each server block.
- Logging is configured to write access logs to `/var/log/nginx/access.log`.
- Various headers are set or hidden based on requirements.
- Response body substitution is enabled for modifying response content.

## Usage
1. Ensure NGINX is installed on your system.
2. Replace placeholder values (e.g., `example.com`, `some-path`, paths to SSL certificates) with your actual configurations.
3. Copy the provided configuration into your NGINX configuration file (e.g., `/etc/nginx/nginx.conf`).
4. Restart NGINX to apply the changes (`sudo service nginx restart`).

## Notes
- Ensure SSL certificates and keys are correctly configured for secure connections.
- Verify paths and URLs to ensure proper functioning of proxies and static content servers.
- Adjust CORS settings as per your application requirements.

