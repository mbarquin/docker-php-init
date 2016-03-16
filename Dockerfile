FROM php:5.6-apache

ENV APACHE_ROOT_DIR /var/www/src/public
ENV APACHE_LOG_DIR /var/www/logs

RUN docker-php-ext-install mysqli
RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install pdo_mysql
RUN apt-get update && apt-get install -y zlib1g-dev git
RUN docker-php-ext-install zip

COPY apache/000-default.conf /etc/apache2/sites-enabled/

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/ --filename=composer

WORKDIR /var/www/


CMD ["apache2-foreground"]

EXPOSE 80

#docker run --rm -v /var/www/vigoBus:/var/www -t -i 01e4d2d900f5 /bin/bash