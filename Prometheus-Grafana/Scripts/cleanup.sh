#!/bin/bash

# Arrête les services de monitoring
echo "Arrêt de Prometheus..."
sudo systemctl stop prometheus

echo "Arrêt de Node Exporter..."
sudo systemctl stop prometheus-node-exporter

echo "Arrêt de Grafana..."
sudo systemctl stop grafana-server

# Supprime les paquets et nettoie les fichiers résiduels
echo "Suppression de Prometheus et Node Exporter..."
sudo apt-get remove --purge prometheus prometheus-node-exporter -y

echo "Suppression de Grafana..."
sudo apt-get remove --purge grafana -y

echo "Nettoyage des fichiers résiduels..."
sudo apt-get autoremove -y
sudo apt-get clean

echo "Les ressources ont été nettoyées avec succès."
