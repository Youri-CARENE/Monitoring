# ELK Monitoring Project with Docker

Pour prendre en main ELK pour le monitoring et l'analyse des logs.

## Prérequis

- Docker
- Docker Compose

## Structure du Projet

- `docker-compose.yml` : Fichier d'orchestration pour lancer les services ELK.
- `elasticsearch/` : Contient le Dockerfile et la configuration pour Elasticsearch.
- `logstash/` : Contient le Dockerfile et la configuration pour Logstash.
- `kibana/` : Contient le Dockerfile et la configuration pour Kibana.
- `input_logs/` : Contient un fichier de logs exemple que Logstash va traiter.
- `.env` : Variables d'environnement pour configurer les versions des services ELK.

## Déploiement

1. **Cloner le dépôt :**
   ```bash
   git clone https://github.com/votre-profil/elk-monitoring-project.git
   cd elk-monitoring-project
