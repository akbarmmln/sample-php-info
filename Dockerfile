#Pulling base php-apache image from dockerhub
FROM php:7.4-apache

RUN apt-get update && apt-get clean && apt-get install -y libssl-dev zlib1g-dev libfreetype6-dev libjpeg62-turbo-dev libpng12-dev libmcrypt-dev

ENV TZ=Asia/Jakarta
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# The PHP application code goes in sample-php-info/
COPY . /var/www/html/sample-php-info

USER root

EXPOSE 80

CMD ["apache2-foreground"]
