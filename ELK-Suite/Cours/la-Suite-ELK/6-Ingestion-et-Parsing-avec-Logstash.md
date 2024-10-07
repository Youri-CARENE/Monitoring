
# Ingestion et Parsing des Données avec Logstash

Une des principales forces de Logstash est sa capacité à ingérer des données depuis diverses sources, à les transformer, puis à les envoyer vers une destination comme Elasticsearch.

## Ingestion des Données

Logstash peut collecter des données à partir de diverses sources, notamment :

- **Fichiers** : Logs systèmes, fichiers texte.
- **Services réseau** : Collecte via des ports ouverts pour recevoir des données en temps réel.
- **APIs** : Connexion à des services externes pour récupérer des données.

Exemple d'ingestion à partir d'un fichier de log :

```plaintext
input {
  file {
    path => "/var/log/syslog"
    start_position => "beginning"
  }
}
