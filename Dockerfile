# Use the official Nginx image from the Docker Hub
FROM registry.redhat.io/rhel8/nginx-120

# Set a non-root user
RUN mkdir -p /var/cache/nginx/client_temp && \
    mkdir -p /etc/nginx/conf.d && \
    chown -R 1001:0 /var/cache/nginx /etc/nginx/conf.d && \
    chmod -R 777 /var/cache/nginx /etc/nginx/conf.d

# Copy the index.html file to the Nginx HTML directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
