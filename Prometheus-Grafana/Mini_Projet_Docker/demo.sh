#!/bin/bash

# Vérifier si les conteneurs sont en cours d'exécution
echo "Vérification de l'état des conteneurs..."

docker ps | grep "flaskapp"
if [ $? -eq 0 ]; then
    echo "Le conteneur Flask est en cours d'exécution."
else
    echo "Le conteneur Flask n'est pas en cours d'exécution."
fi

docker ps | grep "prometheus"
if [ $? -eq 0 ]; then
    echo "Le conteneur Prometheus est en cours d'exécution."
else
    echo "Le conteneur Prometheus n'est pas en cours d'exécution."
fi

docker ps | grep "grafana"
if [ $? -eq 0 ]; then
    echo "Le conteneur Grafana est en cours d'exécution."
else
    echo "Le conteneur Grafana n'est pas en cours d'exécution."
fi

# Vérifier l'accès aux services
echo "Test d'accès aux services..."

FLASK_STATUS=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:5000)
PROMETHEUS_STATUS=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:9090)
GRAFANA_STATUS=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:3000)

if [ $FLASK_STATUS -eq 200 ]; then
    echo "Le service Flask est accessible."
else
    echo "Le service Flask n'est pas accessible (code HTTP: $FLASK_STATUS)."
fi

if [ $PROMETHEUS_STATUS -eq 200 ]; then
    echo "Le service Prometheus est accessible."
else
    echo "Le service Prometheus n'est pas accessible (code HTTP: $PROMETHEUS_STATUS)."
fi

if [ $GRAFANA_STATUS -eq 200 ]; then
    echo "Le service Grafana est accessible."
else
    echo "Le service Grafana n'est pas accessible (code HTTP: $GRAFANA_STATUS)."
fi

echo "Vérification des services terminée."
