#DockerFile
#Pulling base php-apache image from dockerhub
FROM php:7.4-apache
RUN apt-get update && \
    apt-get clean
# The PHP application code goes in sample-php-info/
COPY . /var/www/html/sample-php-info

USER root

EXPOSE 8099

CMD ["start-apache"]
