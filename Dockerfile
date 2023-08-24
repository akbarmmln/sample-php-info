#Pulling base php-apache image from dockerhub
FROM php:7.4-apache

RUN apt-get update && apt-get clean

RUN apk add tzdata && cp /usr/share/zoneinfo/Asia/Jakarta /etc/localtime && echo "Asia/Jakarta" >  /etc/timezone

# The PHP application code goes in sample-php-info/
COPY . /var/www/html/sample-php-info

USER root

EXPOSE 80

CMD ["apache2-foreground"]
