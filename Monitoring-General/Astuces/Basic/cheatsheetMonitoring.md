# Monitoring Cheat Sheet

## Concepts Clés

- **Monitoring** : Surveillance en temps réel des systèmes, applications et réseaux pour s'assurer de leur disponibilité, de leurs performances et de leur intégrité.

- **Métriques** : Mesures quantitatives spécifiques qui indiquent la santé des systèmes.
  - **Exemples de métriques** :
    - **CPU Usage** : Pourcentage d'utilisation du processeur.
    - **RAM Usage** : Quantité de mémoire utilisée.
    - **Disk I/O** : Volume de lecture/écriture sur le disque.
    - **Latency** : Temps de réponse des applications.
  
- **Logs** : Enregistrements des événements qui se produisent au sein des systèmes, des applications et des réseaux.
  - **Exemples de logs** :
    - **System Logs** : Journaux du système d'exploitation (erreurs, démarrages).
    - **Application Logs** : Journaux générés par des applications (erreurs, transactions).
    - **Security Logs** : Enregistrements des événements liés à la sécurité (accès, modifications).

- **Alertes** : Notifications automatiques lorsqu'une métrique dépasse un seuil critique. Permet d'identifier rapidement les problèmes.
  - **Exemples** :
    - **CPU > 90% pendant 5 minutes**.
    - **Erreur 500 répétée sur un site web**.
    - **Espace disque inférieur à 10%**.

## Types de Monitoring

1. **Infrastructure Monitoring** : Suivi des performances matérielles et des ressources (serveurs, réseaux, stockage).
   - **Exemples d'outils** : Prometheus, Zabbix, Nagios.

2. **Application Monitoring** : Suivi des performances et de la disponibilité des applications.
   - **Exemples d'outils** : New Relic, Datadog, Elastic APM.

3. **Log Monitoring** : Collecte et analyse des logs pour diagnostiquer les erreurs et identifier les anomalies.
   - **Exemples d'outils** : ELK Stack (Elasticsearch, Logstash, Kibana), Graylog.

4. **Security Monitoring** : Suivi des événements de sécurité et des accès non autorisés.
   - **Exemples d'outils** : OSSEC, Wazuh, Splunk.

## Outils de Monitoring

- **Prometheus** : Solution open-source de monitoring des infrastructures, particulièrement adaptée aux environnements cloud et containerisés (Kubernetes). Collecte des métriques en temps réel et permet des alertes avancées.
  - **Métriques** : Scrape des données de sources externes (exporters).

- **ELK Stack (Elasticsearch, Logstash, Kibana)** : Stack open-source pour la collecte, l'indexation et la visualisation des logs. Utilisé pour l'analyse des logs et la visualisation en temps réel.
  - **Elasticsearch** : Stocke et indexe les logs.
  - **Logstash** : Collecte et transforme les logs avant de les envoyer à Elasticsearch.
  - **Kibana** : Interface de visualisation des logs et des métriques.

- **Zabbix** : Plateforme complète de monitoring open-source. Collecte des métriques de performance, surveille l'état des serveurs, applications et réseaux, et offre des alertes avancées.
  - **Exemple d’utilisation** : Suivi de l’utilisation des ressources sur des machines virtuelles.

- **Nagios** : Solution open-source de surveillance des infrastructures et des applications. Très populaire pour les environnements de production traditionnels.

## Notions Techniques

- **Query DSL (Elasticsearch)** : Langage spécifique pour effectuer des recherches et des agrégations dans Elasticsearch.
  - **Exemple** :
    ```json
    {
      "query": {
        "match": {
          "message": "error"
        }
      }
    }
    ```

- **Shards (Elasticsearch)** : Fragmentation des index pour répartir les données et les requêtes sur plusieurs nœuds dans un cluster.
  
- **Pipelines (Logstash)** : Ensemble d'étapes (input, filter, output) pour traiter les logs :
  - **Input** : Collecte les logs.
  - **Filter** : Applique des transformations aux logs (ex: parsing avec Grok).
  - **Output** : Envoie les logs à Elasticsearch ou un autre service.

## Bonnes Pratiques

- **Définir des KPI** : Identifiez les indicateurs de performance critiques pour vos systèmes (temps de disponibilité, temps de réponse, taux d'erreurs).
  
- **Configurer des alertes pertinentes** : Les alertes doivent être précises et bien calibrées pour éviter les faux positifs et garantir que les incidents critiques sont signalés.

- **Utiliser des Dashboards** : Créez des tableaux de bord dans des outils comme Grafana ou Kibana pour obtenir une vue d’ensemble de vos systèmes et suivre les tendances.

- **Automatiser la Réaction aux Incidents** : Configurez des réponses automatiques aux incidents lorsque cela est possible (ex: redémarrage automatique d'un service en cas d'échec).

- **Sauvegarder les Données** : Enregistrez régulièrement des snapshots de vos indices Elasticsearch pour assurer la récupération en cas de panne.

## Glossaire des Termes Importants

- **API** : Application Programming Interface. Ensemble de fonctions permettant à deux applications de communiquer.
- **Aggregation** : Fonctionnalité d’Elasticsearch permettant de regrouper et d'analyser les données (ex: moyenne, somme).
- **Index** : Collection de documents dans Elasticsearch, comparable à une base de données.
- **Snapshot** : Sauvegarde des index Elasticsearch.
- **Watcher** : Outil d’alerte d’Elasticsearch pour déclencher des actions en fonction des conditions définies sur les données.
