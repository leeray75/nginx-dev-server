FROM nginx:latest

# Install openssl
RUN apt-get update && apt-get install -y openssl

# Create SSL directory
RUN mkdir -p /etc/nginx/ssl

# Generate SSL certificates
RUN openssl req -new -newkey rsa:2048 -days 365 -nodes -x509 \
    -subj "/CN=localhost.example.com" \
    -keyout /etc/nginx/ssl/server.key \
    -out /etc/nginx/ssl/server.crt

# Copy NGINX configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 443 for HTTPS
EXPOSE 8080
