# Use a lightweight web server image
FROM nginx:alpine

# Copy your HTML file into the web server
COPY index.html /usr/share/nginx/html/

# Expose port 80 (default HTTP port)
EXPOSE 80

# Start the web server
CMD ["nginx", "-g", "daemon off;"]