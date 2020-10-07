FROM php:apache

ADD vhost.conf /etc/apache2/sites-enabled/000-default.conf

RUN apt-get update && \
    apt-get install -y --no-install-recommends git zip libzip-dev unzip

RUN apt-get update && apt-get install -y libmcrypt-dev \
    && docker-php-ext-install pdo_mysql zip mysqli