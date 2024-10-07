# Elasticsearch : Les Fondamentaux

Elasticsearch est le cœur de l'ELK Stack. C'est un moteur de recherche et d'analyse distribué, capable de gérer de vastes volumes de données en temps réel. 

## Architecture d'Elasticsearch

### 1. Cluster, Nodes et Shards

- **Cluster** : Un ensemble de nœuds (nodes) qui travaillent ensemble pour stocker et analyser des données.
- **Node** : Un serveur unique dans un cluster Elasticsearch.
- **Shards** : Chaque index est divisé en plusieurs shards pour faciliter la distribution des données à travers le cluster.

### 2. Index, Documents et Mapping

- **Index** : Un ensemble de documents similaires. Il est analogue à une base de données dans un SGBD.
- **Document** : L'unité de données dans Elasticsearch, stockée sous forme de JSON.
- **Mapping** : Définit la structure des documents dans un index.

## Recherche dans Elasticsearch

Elasticsearch utilise une syntaxe de requête puissante appelée Query DSL (Domain-Specific Language). Cela permet de créer des requêtes complexes pour extraire des données précises à partir de vastes volumes.

## Cas d'Usage

Elasticsearch est souvent utilisé pour :
- Le monitoring des applications (logs, métriques).
- L'analyse de grandes quantités de données en temps réel.
- Le stockage et la recherche de données non structurées.
