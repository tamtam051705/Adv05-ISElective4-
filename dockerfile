<<<<<<< HEAD
FROM php:8.2-apache

RUN docker-php-ext-install mysqli 

WORKDIR /var/www/html

COPY . /var/www/html

EXPOSE 80

CMD ["apache2-foreground"]
=======
FROM php:8.2-apache

RUN docker-php-ext-install mysqli pdo pdo_mysql

WORKDIR /var/www/html

COPY . /var/www/html

EXPOSE 80

CMD ["apache2-foreground"]
>>>>>>> 8d08809d39aea5accd85cd5c496d243ca4fd1eb5
