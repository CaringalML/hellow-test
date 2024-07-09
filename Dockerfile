# Use an official Alpine image as a parent image
FROM nginx:alpine

# Copy the entire directory contents into the appropriate directory
COPY . /usr/share/nginx/html/

# Copy the nginx.conf file into the appropriate directory
COPY nginx.conf /etc/nginx/nginx.conf

# Make port 80 available to the world outside this container
EXPOSE 80

# Use the default command for the nginx:alpine image: "nginx -g 'daemon off;'"
CMD ["nginx", "-g", "daemon off;"]
