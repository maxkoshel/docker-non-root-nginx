# Nginx environment
FROM nginx:alpine

RUN adduser -D webserver

# Copy static files
COPY html /home/webserver/www/html

# Copy nginx config
COPY nginx.conf /home/webserver/nginx.conf

# Switch to `nginx` user
USER webserver

RUN mkdir /home/webserver/log

# Run nginx
CMD ["nginx", "-c", "/home/webserver/nginx.conf", "-g", "daemon off;"]
