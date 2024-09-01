# Logstash : Les Bases

Logstash est un outil essentiel dans l'ELK Stack, chargé de collecter, transformer et acheminer les données vers Elasticsearch. 

## Architecture de Logstash

Logstash fonctionne selon une architecture en pipeline, divisée en trois étapes principales :

1. **Input** : Collecte les données depuis différentes sources (fichiers, bases de données, APIs).
2. **Filter** : Transforme les données en utilisant des plugins comme Grok, Mutate, ou Date.
3. **Output** : Envoie les données transformées vers une destination, généralement Elasticsearch.

### Plugins Courants

- **Grok** : Utilisé pour extraire des données non structurées en utilisant des expressions régulières.
- **Mutate** : Permet de modifier des champs dans les événements.
- **Date** : Transforme les chaînes de caractères en objets de date.

## Configuration de Logstash

Les pipelines Logstash sont définis dans des fichiers de configuration en utilisant une syntaxe simple. Chaque pipeline contient au moins une section `input`, une section `filter`, et une section `output`.

Exemple de pipeline de base :

```plaintext
input {
  file {
    path => "/var/log/syslog"
    start_position => "beginning"
  }
}

filter {
  grok {
    match => { "message" => "%{SYSLOGTIMESTAMP:timestamp} %{GREEDYDATA:message}" }
  }
}

output {
  elasticsearch {
    hosts => ["http://localhost:9200"]
    index => "syslog-%{+YYYY.MM.dd}"
  }
}


