# Use the official Nginx image from Docker Hub
FROM nginx:alpine

# Remove the default web files
RUN rm -rf /usr/share/nginx/html/*

# Copy your static website files into the Nginx web directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
