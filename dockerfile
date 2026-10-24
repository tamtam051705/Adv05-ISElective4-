

FROM php:8.2-apache

RUN docker-php-ext-install mysqli pdo pdo_mysql

WORKDIR /var/www/html

COPY . /var/www/html

EXPOSE 80

CMD ["apache2-foreground"]

RUN mkdir -p /var/www/html/images/users \
    && chown -R www-data:www-data /var/www/html/images \
    && chmod -R 755 /var/www/html/images

