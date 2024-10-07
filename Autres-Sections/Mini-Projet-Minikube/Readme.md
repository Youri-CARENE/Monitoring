# Monitoring avec ELK sur Kubernetes avec Minikube

Ce guide vous explique comment déployer la stack ELK (Elasticsearch, Logstash, Kibana) sur un cluster Kubernetes local en utilisant Minikube.

## Prérequis

- Minikube
- Kubectl
- Helm

## Installation de Minikube

Démarrez Minikube avec les ressources nécessaires :

```bash
minikube start --cpus 4 --memory 8192
