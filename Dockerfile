# Use the official Nginx image from the Docker Hub
FROM nginx:latest

# Set a non-root user
RUN useradd -u 1001 -r -g 0 nginxuser \
    && chown -R 1001:0 /var/cache/nginx /var/run /var/log/nginx \
    && chmod -R g=u /var/cache/nginx /var/run /var/log/nginx

# Copy the index.html file to the Nginx HTML directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
