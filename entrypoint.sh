#!/bin/bash
set -e

# First, start PHP-FPM
docker-php-entrypoint php-fpm &

# Then start Nginx
nginx -g "daemon off;"
