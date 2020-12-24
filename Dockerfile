FROM php:7.3-apache

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php composer-setup.php --filename=composer && \
    php -r "unlink('composer-setup.php');"

RUN apt-get update && \
    apt-get install -y vim git -y
    
#RUN docker-php-ext-install mbstring json gd curl zlib mysqli pdo pdo_mysql zip
RUN docker-php-ext-install pdo_mysql pdo mysqli

EXPOSE 80
