#!/bin/bash

# Met à jour les paquets et installe les outils de monitoring
echo "Mise à jour des paquets..."
sudo apt-get update -y

echo "Installation de Prometheus..."
sudo apt-get install prometheus -y

echo "Installation de Node Exporter..."
sudo apt-get install prometheus-node-exporter -y

# Configuration des services
echo "Démarrage de Prometheus..."
sudo systemctl start prometheus
sudo systemctl enable prometheus

echo "Démarrage de Node Exporter..."
sudo systemctl start prometheus-node-exporter
sudo systemctl enable prometheus-node-exporter

echo "Les outils de monitoring ont été installés et configurés avec succès."
