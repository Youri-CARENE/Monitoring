
# Exemple de Tableau de Bord Grafana


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
