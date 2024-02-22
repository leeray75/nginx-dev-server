# Documentation for start.sh and start.bat

This documentation provides an explanation of the `start.sh` and `start.bat` scripts, which are used to start a Docker container for an NGINX development server.

## start.sh

### Purpose
- The `start.sh` script is a shell script written for Unix/Linux systems, primarily for starting a Docker container for an NGINX development server.

### Functionality
1. **Load Environment Variables**: It loads environment variables from the `.env.local` file if it exists.
2. **Define Paths**: It defines static and dynamic parts of the path for mounting volumes inside the Docker container.
3. **Build Docker Image**: It builds the Docker image named `nginx-dev-server`.
4. **Stop Existing Container**: It stops the running Docker container named `nginx-dev-server`, if it exists.
5. **Remove Stopped Container**: It removes the stopped Docker container named `nginx-dev-server`, if it exists.
6. **Run Docker Container**: It runs a new Docker container named `nginx-dev-server` in detached mode (`-d`) with port mapping (`-p`) and volume mounting (`-v`).

## start.bat

### Purpose
- The `start.bat` script is a batch script written for Windows systems, primarily for starting a Docker container for an NGINX development server.

### Functionality
1. **Load Environment Variables**: It loads environment variables from the `.env.local` file if it exists.
2. **Define Paths**: It defines static and dynamic parts of the path for mounting volumes inside the Docker container.
3. **Build Docker Image**: It builds the Docker image named `nginx-dev-server`.
4. **Stop Existing Container**: It stops the running Docker container named `nginx-dev-server`, if it exists.
5. **Remove Stopped Container**: It removes the stopped Docker container named `nginx-dev-server`, if it exists.
6. **Run Docker Container**: It runs a new Docker container named `nginx-dev-server` in detached mode (`-d`) with port mapping (`-p`) and volume mounting (`-v`).

## Usage
- Execute either `start.sh` (for Unix/Linux) or `start.bat` (for Windows) to start the NGINX development server Docker container.

## Notes
- Ensure Docker is installed and configured properly on your system.
- Make sure to have the necessary permissions to execute the script on Unix/Linux systems.
- Modify `.env.local` file and paths as needed to suit your project requirements.