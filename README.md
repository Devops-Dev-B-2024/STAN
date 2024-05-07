# Projet Stack WEB (Apache / MySQL / PHP)


## Mise en place, après avoir lancer Docker Desktop :

### 1) Lancer minikube :
```
minikube start
```

### 2) Configuration afin utiliser le daemon Docker de Minikube
```
minikube docker-env | Invoke-Expression
```

### 3) Construire l'image Docker :
```
docker build -t php-apache:1.0.0 .
```

### 5) Appliquer la configuration Kubernetes :
```
kubectl apply -f .\Kubernetes.yaml
```

### 6) Lancer le service php-apache :
```
minikube service stan-php-apache
```

### 7) Lancer le service phpmyadmin :
```
minikube service stan-phpmyadmin
```

### 8) Fournir la base de donnée
```
Si nécéssaire, créer la base 'redstream_db', puis allez dans l'onglet 'SQL' de phpmyadmin, une fois fait, éxecuter le contenu du fichier 'redstream_db.sql' fourni.
```

### Ça y est ! Le site est opérationnel
```
Le site est maintenant fonctionnel.

Disclaimer: A noter que le site à mal été développé, celui gère mal la connexion à la base de donnée, certaines pages peuvent ne pas fonctionner, mais la page register est 100% fonctionnelle.
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

### Si nécéssaire, voici comment déployer l'image : 
```
kubectl set image deployment/php-apache-deployment php-apache=php-apache:0.1.0
```

