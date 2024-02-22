# NGINX DEV SERVER

This project serves as a local development environment for NGINX, allowing developers to work with the real environment's content and data while loading the project's source code from the local machine instead of the image/static servers.

## Installation

To set up and run the project locally, follow these steps:

### Prerequisites

- Docker: [Installation Guide](https://docs.docker.com/get-docker/)
- Text Editor (e.g., Visual Studio Code, Sublime Text)

### Clone the Repository

```bash
git clone https://github.com/leeray75/openai-chatbot.git
cd nginx-dev-server
```

### Configure Environment

1. Create a file named `.env.local` in the root directory of the project.
2. Set the `PROJECTS_PATH` variable to the location where you store your projects on your local machine. For example:

```plaintext
# .env.local
PROJECTS_PATH="$HOME/Projects"
```

### Modify Hosts File

Edit your local machine's hosts file to map the server names to 127.0.0.1:

```plaintext
# Hosts File
127.0.0.1 img.localhost.qa.example.com
127.0.0.1 api.localhost.qa.example.com
127.0.0.1 www.localhost.qa.example.com
127.0.0.1 localhost.qa.example.com
127.0.0.1 img.localhost.staging.example.com
127.0.0.1 api.localhost.staging.example.com
127.0.0.1 www.localhost.staging.example.com
127.0.0.1 localhost.staging.example.com
```

On macOS and Linux, the hosts file is located at `/etc/hosts`. On Windows, it is located at `C:\Windows\System32\drivers\etc\hosts`.

## Running the Project

To run the project locally, execute one of the following files depending on your operating system:

- **Unix/Linux/macOS**: Run `./start.sh`
- **Windows**: Run `start.bat`

These scripts will handle the setup and execution of the project, including Docker container management and environment variable loading.

**Note:** When accessing the URLs provided in the samples, your browser may show a security warning due to self-signed certificates. You will need to manually approve accessing the image server and the API server by opening those network requests in a new browser tab and accepting the security risks associated with self-signed certificates.

## Samples:

The App Server instances need to be available on the environments' physical servers.

* [Staging Local](https://localhost.staging.example.com:8080/app-path)
* [Staging QA01 Local](https://localhost.qa.example:8080/app-path)