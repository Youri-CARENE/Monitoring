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


### 4. **04-Kibana-Essentiels.md**

```markdown
# Kibana : Les Essentiels

Kibana est l'interface de visualisation de l'ELK Stack. Il permet de créer des tableaux de bord interactifs pour explorer et visualiser les données stockées dans Elasticsearch.

## Interface Utilisateur de Kibana

Kibana offre plusieurs fonctionnalités clés :

1. **Discover** : Explorez les données indexées dans Elasticsearch. Vous pouvez filtrer et rechercher les données en temps réel.
2. **Visualize** : Créez des visualisations graphiques (histogrammes, pie charts, heatmaps) à partir des données.
3. **Dashboard** : Combinez plusieurs visualisations en un tableau de bord interactif.

## Création d'une Visualisation

Pour créer une visualisation dans Kibana :

1. Accédez à l'onglet **Visualize**.
2. Sélectionnez un type de visualisation (ex: Bar Chart, Pie Chart).
3. Choisissez l'index Elasticsearch contenant les données à visualiser.
4. Configurez les options (axes, métriques, filtres) pour personnaliser la visualisation.

## Gestion des Index Patterns

Un index pattern est une configuration qui permet à Kibana de reconnaître les index Elasticsearch. Cela facilite l'exploration et la visualisation des données.

