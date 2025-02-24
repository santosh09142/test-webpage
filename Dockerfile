# Use the official Nginx image from the Docker Hub
FROM registry.redhat.io/rhel8/nginx-120

# Set a non-root user


# Copy the index.html file to the Nginx HTML directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
