FROM php:5.6-apache

ENV APACHE_ROOT_DIR /var/www/src/public
ENV APACHE_LOG_DIR /var/www/log/apache

ENV PROJECT_ROOT_DIR /var/www

RUN docker-php-ext-install mysqli
RUN docker-php-ext-install gettext
RUN docker-php-ext-install mbstring
RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install pdo_mysql
RUN apt-get update && apt-get install -y zlib1g-dev git sed
RUN docker-php-ext-install zip

COPY config/000-default.conf /etc/apache2/sites-enabled/
COPY config/php.ini-development /usr/local/etc/php/php.ini

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/ --filename=composer

RUN sed 's/\/var\/www\/html/\/var\/www\/src\/public/g' /etc/apache2/apache2.conf > /etc/apache2/apache2_tmp.conf
RUN mv /etc/apache2/apache2_tmp.conf /etc/apache2/apache2.conf

WORKDIR /var/www/


CMD ["apache2-foreground"]

EXPOSE 80

#docker build -t='docker-php-init' .
#docker run --rm -v /var/www/docker-php-init:/var/www -t docker-php-init composer install
#docker run -p 80 -v /var/www/docker-php-init:/var/www -d -t -i 228a90f50b90 /bin/bash

#docker run -p 80 -v /var/www/docker-php-init:/var/www -t -i 6d98f637fbd5
