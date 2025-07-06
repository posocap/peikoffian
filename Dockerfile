# Use a lightweight web server image
FROM nginx:alpine

# Set working directory
WORKDIR /usr/share/nginx/html

# Remove default nginx static assets
RUN rm -rf ./*

# Copy static site files
COPY index.html ./
COPY css ./css
COPY js ./js
COPY pics ./pics

# Expose port 80
EXPOSE 80

# No CMD needed, nginx default
