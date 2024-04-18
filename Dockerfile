FROM php:8.1.28-apache
COPY ./Front /var/www/html/
EXPOSE 80

# minikube docker-env
# docker build -t php-apache .
# docker run -d --restart=always --name php-apache -p 80:80 php-apache
