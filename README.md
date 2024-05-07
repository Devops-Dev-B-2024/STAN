# Projet Stack WEB (Apache / MySQL / PHP)


## Mise en place :

### 1) Lancer Docker Desktop

### 2) Lancer minikube :
```
minikube start
```

### 3) Construire l'image Docker :
```
docker build -t php-apache:1.0.0 .
```

### 4) Déploiement de l'image : 
```
kubectl set image deployment/php-apache-deployment php-apache=php-apache:0.1.0
```

### 5) Appliquer la configuration Kubernetes :
```
kubectl apply -f .\Kubernetes.yaml
```

### 6) Lancer le service :
```
minikube service php-apache-service  
```


## Site Web : 

Projet red stream [Ici](https://github.com/WH1T3-E4GL3/project-red-stream)

### Capture d'écran
![252156140-465974c2-8b22-441d-8406-59be5657b8ef](https://github.com/WH1T3-E4GL3/project-red-stream/assets/118425907/58b9be48-7769-4a20-a920-f331b296aab9)



## Requêtes supplémentaires :

### Arrêter minikube :
```
minikube stop
```

### Supprimer les pods : 
```
kubectl delete -f Kubernetes.yaml
```

### Entrer dans un pod :
```
kubectl exec -it [NAME/id_conteneur] -- /bin/bash
```

### Accès à la base de données :
- Vérifier le déploiement : 
```
kubectl get pods
```

- Se connecter au pod mysql deployment :
```
kubectl exec -it [NAME/id_conteneur] bash
```

- Se connecter à MySQL :
```
mysql -u root
```

- Sélectionner la base de données :
```
USE redstream_db;
```

- Afficher les tables :
```
SHOW TABLES;
```

### Configure pour utiliser le daemon Docker de Minikube
```
minikube docker-env | Invoke-Expression
```