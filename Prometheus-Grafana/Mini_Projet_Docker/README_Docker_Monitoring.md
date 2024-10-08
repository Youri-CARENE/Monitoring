
# Projet de Monitoring avec Docker

Ce sous-dossier contient les scripts et les configurations nécessaires pour construire et lancer un environnement de monitoring utilisant Docker et Docker Compose.

## Contenu

- `Build_ALL_Images.sh`
- `docker-compose.yml`
- `InstallDemo.sh`

## Prérequis

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)

## Instructions

### 1. Construire les images Docker

Le script `Build_ALL_Images.sh` construit toutes les images Docker nécessaires pour le projet. Il utilise les fichiers Docker suivants pour créer les images :
- `Dockerfile.prometheus` pour l'image Prometheus
- `Dockerfile.grafana` pour l'image Grafana
- `Dockerfile.flask` pour l'application Flask

Pour exécuter le script, utilisez la commande suivante :
```sh
./Build_ALL_Images.sh
```

### 2. Lancer les conteneurs Docker

Le script `InstallDemo.sh` automatise le processus de lancement des conteneurs Docker. Il exécute les étapes suivantes :
1. Construit les images Docker en exécutant `Build_ALL_Images.sh`.
2. Lance les conteneurs en arrière-plan en utilisant `docker-compose up -d`.
3. Attribue les permissions d'exécution et exécute le script `demo.sh`.
4. Affiche les logs des conteneurs pour le suivi en temps réel.

Pour exécuter le script, utilisez la commande suivante :
```sh
./InstallDemo.sh
```

### 3. Configuration de Docker Compose

Le fichier `docker-compose.yml` contient la configuration nécessaire pour orchestrer les différents services Docker. Assurez-vous que les chemins et les ports sont correctement configurés selon vos besoins avant de lancer les conteneurs.

### 4. Afficher les logs

Pour afficher les logs des conteneurs en temps réel, utilisez la commande suivante :
```sh
docker-compose logs -f
```
