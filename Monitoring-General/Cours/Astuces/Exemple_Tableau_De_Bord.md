
# Exemple de Tableau de Bord Grafana

Ce document présente un exemple de tableau de bord pour monitorer un serveur web. Ce tableau de bord permet de suivre les métriques essentielles comme l'utilisation du CPU, la mémoire, et le trafic réseau.

## Exemple de Configuration

1. **Panneau Utilisation CPU**
   - Requête : `node_cpu_seconds_total`
   - Type : Graphique en ligne
   - Intervalle : 5 secondes

2. **Panneau Utilisation Mémoire**
   - Requête : `node_memory_MemAvailable_bytes`
   - Type : Jauge

3. **Panneau Trafic Réseau**
   - Requête : `node_network_receive_bytes_total`
   - Type : Graphique en barre

Ce tableau de bord permet de visualiser les principales métriques pour évaluer la performance du serveur en temps réel.
