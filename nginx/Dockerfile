# Use the standard Nginx image from Docker Hub
FROM nginx

# The Dockerfile's author
LABEL jean-Pierre Carret

COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /usr/share/nginx/html/index.html
# Port 8080 of the container will be exposed and then mapped to port
# 8080 of our host machine via Compose. This way we'll be able to 
# access the server via localhost:8080 on our host.
EXPOSE 80 

# Start Nginx when the container has provisioned.
CMD ["nginx-debug", "-g", "daemon off;"]
