#!/bin/bash
set -e

# Start PHP-FPM
php-fpm &

# Start Nginx
nginx -g "daemon off;"
