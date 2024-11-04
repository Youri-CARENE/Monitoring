
# Exemple de Monitoring d'Infrastructure


## Étapes de Configuration

1. **Surveillance des Serveurs**
   - Utilisez Prometheus pour surveiller les métriques des serveurs : utilisation CPU, mémoire, et disque.
   - Requête : `node_cpu_seconds_total`, `node_memory_MemAvailable_bytes`, `node_filesystem_avail_bytes`.

2. **Surveillance des Bases de Données**
   - Connectez Prometheus à votre base de données (par exemple, PostgreSQL) pour surveiller les connexions, les temps de requêtes, et les erreurs.
   - Requête : `pg_stat_activity_count`, `pg_locks_count`.

3. **Surveillance Réseau**
   - Surveillez le trafic réseau entrant et sortant pour détecter des anomalies.
   - Requête : `node_network_receive_bytes_total`, `node_network_transmit_bytes_total`.

4. **Configuration d'Alerte**
   - Configurez des alertes pour chaque composant pour être informé des défaillances potentielles.
   - Exemple : Alerte si le CPU dépasse 80% d'utilisation pendant plus de 5 minutes.

Ce setup permet de surveiller tous les aspects critiques d'une infrastructure pour garantir stabilité et performance.
