FROM php:8.1.28-apache
COPY ./Front /var/www/html/
EXPOSE 80

# minikube docker-env # Permet de configurer l'environnement docker pour qu'il utilise minikube
# docker build -t php-apache . # Construit l'image à partir de ce Dockerfile
# docker run -d --restart=always --name php-apache -p 80:80 php-apache # Lance le conteneur (Ne pas oublier docker-env)

# kubectl expose deployment php-apache --type=NodePort --port=80 # Expose le déploiement php-apache sur le port 80
# minikube service php-apache # Ouvre le service afin qu'il soit accessible en local / localhost 