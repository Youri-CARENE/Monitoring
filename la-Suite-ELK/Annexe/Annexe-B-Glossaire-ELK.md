# Annexe B : Glossaire des Termes de l'ELK Stack

Ce glossaire recense les termes les plus couramment utilisés dans le contexte de l'ELK Stack. Il est conçu pour vous aider à comprendre les concepts clés et à naviguer dans la documentation et les discussions techniques.

## A

- **API** : Application Programming Interface. Un ensemble de fonctions et de procédures permettant de créer des applications qui accèdent aux fonctionnalités ou aux données d'un autre service.
- **Aggregation** : Une fonctionnalité d'Elasticsearch qui permet de regrouper des résultats de recherche et de calculer des statistiques, comme la somme, la moyenne ou la distribution.

## B

- **Beats** : Une famille d'agents légers qui envoient des données à Logstash ou Elasticsearch. Les plus courants sont Filebeat, Metricbeat, et Packetbeat.
- **Bucket** : Dans Elasticsearch, une agrégation qui regroupe les documents en fonction de critères spécifiques, comme une plage de dates ou des valeurs de champ.

## C

- **Cluster** : Un ensemble de nœuds (serveurs) qui stockent et analysent des données de manière distribuée dans Elasticsearch.
- **Codec** : Un plugin Logstash qui code ou décode les données lors de leur entrée ou sortie, comme JSON ou Rubydebug.

## D

- **Document** : La plus petite unité d'information indexée par Elasticsearch. Un document est un objet JSON contenant des champs de données.
- **DSL** : Domain-Specific Language. Un langage conçu pour exprimer des requêtes dans Elasticsearch (Query DSL).

## E

- **Elasticsearch** : Un moteur de recherche et d'analyse distribué, qui est au cœur de l'ELK Stack.
- **Elasticsearch Query DSL** : Le langage de requête d'Elasticsearch qui permet de rechercher et de manipuler les données stockées.

## F

- **Filter** : Dans Logstash, un ensemble de règles qui transforme les données après leur ingestion, avant qu'elles ne soient envoyées à la sortie.

## G

- **Grok** : Un filtre Logstash qui utilise des expressions régulières pour extraire des données de texte brut.

## I

- **Index** : Un ensemble de documents similaires dans Elasticsearch, comparable à une base de données dans un SGBD.
- **Index Pattern** : Dans Kibana, un modèle qui permet de reconnaître les index Elasticsearch à utiliser pour la recherche et la visualisation.

## K

- **Kibana** : Un outil de visualisation pour Elasticsearch, utilisé pour explorer et analyser les données stockées.

## L

- **Logstash** : Un pipeline de traitement de données qui collecte, transforme et achemine les données vers Elasticsearch ou une autre destination.

## M

- **Mapping** : La définition de la structure d'un document dans un index Elasticsearch, qui détermine le type de données et les propriétés des champs.
- **Metricbeat** : Un Beat qui collecte des métriques système et des statistiques de performances.

## N

- **Node** : Un serveur faisant partie d'un cluster Elasticsearch, capable de stocker des données et de participer aux opérations de recherche et d'analyse.

## P

- **Pipeline** : Dans Logstash, un ensemble d'étapes (input, filter, output) qui traite les données depuis leur entrée jusqu'à leur sortie.

## S

- **Shard** : Une subdivision d'un index Elasticsearch, permettant de distribuer les données sur plusieurs nœuds pour une meilleure performance et une haute disponibilité.
- **Snapshot** : Une sauvegarde des index Elasticsearch, qui peut être utilisée pour restaurer des données en cas de défaillance.

## T

- **Template** : Un modèle de configuration dans Elasticsearch ou Logstash, utilisé pour créer automatiquement des index ou des pipelines avec des paramètres prédéfinis.

## W

- **Watcher** : Un outil de surveillance et d'alerte d'Elasticsearch qui déclenche des actions en réponse à des conditions définies sur les données.

## X

- **X-Pack** : Une extension de l'ELK Stack qui ajoute des fonctionnalités de sécurité, de monitoring, de reporting et plus encore.
