FROM php:8.1.28-apache
COPY ./Front /var/www/html/
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli  
EXPOSE 80

# RUN : Installe et active l'extension mysqli
# minikube docker-env                                                  # Permet de configurer l'environnement docker pour qu'il utilise minikube
# docker build -t php-apache:VERSION -f .\php-apache.Dockerfile .      # Construit l'image à partir de ce Dockerfile
# minikube service *SERVICE*                                           # Ouvre le service afin qu'il soit accessible
# kubectl apply -f .\Kubernetes.yaml                                   # Applique le fichier de configuration Kubernetes