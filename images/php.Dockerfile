FROM php:8.1-fpm

RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

RUN apt update && apt install -y zip libzip-dev unzip wget zlib1g-dev libicu-dev

RUN docker-php-ext-install pdo_mysql intl opcache gd
