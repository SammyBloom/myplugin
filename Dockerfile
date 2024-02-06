# Use the official <link>nginx</link> image as the base image
FROM nginx

# Set the working directory in the container
WORKDIR /usr/share/nginx/html

# Copy the custom HTML file from the local machine to the container
COPY index.html .

# Expose port 80 to allow external access
EXPOSE 80

# When the container starts, start <link>NGINX</link> and keep it running in the background
CMD ["nginx", "-g", "daemon off;"]

