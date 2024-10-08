# Prérequis pour l'Installation de la Suite ELK

## Environnement matériel

- **CPU** : Minimum 2 cœurs (4 ou plus recommandé pour les environnements de production).
- **Mémoire** : 8 Go de RAM minimum, 16 Go recommandé pour les clusters de taille moyenne.
- **Disque** : Un stockage rapide (SSD) est fortement recommandé, surtout pour Elasticsearch.

## Logiciels requis

- **Système d'exploitation** : Ubuntu 20.04 ou supérieur, CentOS 8, ou toute distribution Linux récente.
- **Docker** (optionnel) : Si vous déployez via des conteneurs Docker, assurez-vous que Docker est correctement installé et configuré.
- **Java** : Elasticsearch et Logstash nécessitent une version récente de Java (OpenJDK 11+ recommandé).

## Réseau

- Assurez-vous que les ports suivants sont ouverts :
  - **Elasticsearch** : Port 9200 (API REST), 9300 (communication inter-nœuds)
  - **Kibana** : Port 5601
  - **Logstash** : Selon la configuration des inputs (par exemple 5044 pour Beats)
 