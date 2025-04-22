# Use the official PHP image with FPM
FROM php:8.2-fpm

# Install system dependencies and Nginx
RUN apt-get update && apt-get install -y \
    nginx \
    git \
    unzip \
    curl \
    libzip-dev \
    zip \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    libjpeg-dev \
    libfreetype6-dev \
    && docker-php-ext-install pdo_mysql zip

# Install Composer (to manage Laravel dependencies)
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Set the working directory inside the container
WORKDIR /var/www

# Copy the application source code into the container
COPY . .

# Install Laravel dependencies using Composer (ensure that all necessary packages are installed)
RUN composer install --no-dev --optimize-autoloader

# Copy the Nginx configuration file
COPY default.conf /etc/nginx/conf.d/default.conf

# Set permissions for Laravel storage and cache
RUN chmod -R 775 storage bootstrap/cache && \
    chown -R www-data:www-data /var/www

# Expose port 80 for web traffic
EXPOSE 80

# Start both Nginx and PHP-FPM
CMD service nginx start && php-fpm
