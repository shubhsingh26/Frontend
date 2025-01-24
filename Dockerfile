# Use the official Nginx image as a base image
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy the HTML, CSS, and JS files to the container
COPY ./index.html ./style.css ./script.js /usr/share/nginx/html/

# Expose port 80 to access the website
EXPOSE 80

# Start Nginx service in the foreground (this is the default behavior of the Nginx image)
CMD ["nginx", "-g", "daemon off;"]
