# Use the official WordPress image as the base image
FROM wordpress:latest

# Install dependencies for Nginx and other tools
RUN apt-get update && apt-get install -y nginx supervisor && rm -rf /var/lib/apt/lists/*

# Remove the default Nginx configuration file
RUN rm /etc/nginx/sites-enabled/default

# Add a new Nginx configuration file
COPY nginx/default.conf /etc/nginx/conf.d/

# Copy the Supervisor configuration
COPY supervisor/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# Copy the entrypoint script
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

# Expose port 80
EXPOSE 80

# Set the entrypoint
ENTRYPOINT ["entrypoint.sh"]

# Start Supervisor
CMD ["supervisord", "-n"]
