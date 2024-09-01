# Déployer l'ELK Stack avec Docker

Docker est une technologie incontournable pour le déploiement rapide d'applications. Dans ce chapitre, nous allons voir comment utiliser Docker pour déployer une stack ELK complète.

## Pourquoi Docker ?

Docker permet de standardiser le déploiement en encapsulant les applications et leurs dépendances dans des conteneurs légers et portables. Cela simplifie le déploiement et la gestion de l'ELK Stack.

## Configuration de Docker Compose

Docker Compose est un outil permettant de définir et de gérer des applications multi-conteneurs. Voici un exemple de configuration Docker Compose pour ELK :

```yaml
version: '3.8'

services:
  elasticsearch:
    image: elasticsearch:7.17.0
    environment:
      - discovery.type=single-node
    ports:
      - "9200:9200"

  logstash:
    image: logstash:7.17.0
    volumes:
      - ./logstash.conf:/usr/share/logstash/pipeline/logstash.conf
    ports:
      - "5044:5044"

  kibana:
    image: kibana:7.17.0
    ports:
      - "5601:5601"
    environment:
      - ELASTICSEARCH_HOSTS=http://elasticsearch:9200
