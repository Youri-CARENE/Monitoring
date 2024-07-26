#!/bin/bash

# Télécharge et installe Grafana
echo "Téléchargement de Grafana..."
wget https://dl.grafana.com/oss/release/grafana_7.5.7_amd64.deb

echo "Installation de Grafana..."
sudo dpkg -i grafana_7.5.7_amd64.deb

# Configuration du service Grafana
echo "Démarrage de Grafana..."
sudo systemctl start grafana-server
sudo systemctl enable grafana-server

echo "Grafana a été installé et déployé avec succès."
