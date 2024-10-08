# Concepts Clés de la Suite ELK

La suite ELK repose sur des concepts fondamentaux que chaque utilisateur doit connaître avant de mettre en œuvre une architecture basée sur ELK.

## Elasticsearch

- **Noeud (Node)** : Une instance unique d’Elasticsearch qui fait partie du cluster.
- **Cluster** : Un ensemble de nœuds Elasticsearch qui fonctionnent ensemble.
- **Index** : Une collection logique de documents dans Elasticsearch, similaire à une table dans une base de données.
- **Document** : Un enregistrement unique, stocké en JSON dans un index.
- **Sharding** : Technique de partitionnement horizontal des données afin de permettre une scalabilité horizontale.
- **Répliques** : Copie des shards principaux pour assurer la redondance et la tolérance aux pannes.

## Logstash

- **Pipeline** : Le flux de traitement des données dans Logstash, composé de trois étapes : **input**, **filter**, et **output**.
- **Input** : La source des données que Logstash traite (ex. fichiers logs, événements, bases de données, etc.).
- **Filter** : Transformation des données brutes en informations utiles (ex. parsing de logs, filtrage de données, etc.).
- **Output** : Destination finale des données traitées (ex. Elasticsearch, fichiers, bases de données, etc.).

## Kibana

- **Tableaux de Bord** : Collection de visualisations qui permettent de surveiller et d’analyser les données d’Elasticsearch.
- **Visualisations** : Graphiques individuels ou widgets construits à partir des données d’Elasticsearch.
- **Discover** : Fonctionnalité permettant de rechercher et de naviguer dans les documents Elasticsearch.
