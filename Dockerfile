#DockerFile
#Pulling base php-apache image from dockerhub
FROM php:7.4-apache
RUN apk update && apk add --no-cache wget && apk --no-cache add openssl wget && apk add ca-certificates && update-ca-certificates
# The PHP application code goes in sample-php-info/
COPY . /var/www/html/sample-php-info

USER root

EXPOSE 8099

CMD ["start-apache"]
