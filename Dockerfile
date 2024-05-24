# Use official WordPress image
FROM wordpress:latest

# Create a directory for WordPress files
RUN mkdir -p /var/www/html

# Copy the local WordPress files to the container's html directory
COPY . /var/www/html

# Expose the default WordPress port (80)
EXPOSE 80

# Run Apache in the foreground
CMD ["httpd", "-f"]