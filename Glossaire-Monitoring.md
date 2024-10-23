# Glossaire du Monitoring avec Prometheus et Grafana

## Alerte
**Définition :** Mécanisme pour notifier les équipes lorsque certaines conditions ou seuils sont atteints ou dépassés. Les alertes peuvent être configurées avec Prometheus pour surveiller des métriques spécifiques et sont envoyées via Alertmanager.

## Alertmanager
**Définition :** Composant de Prometheus responsable de la gestion des alertes envoyées par Prometheus. Il permet de regrouper, de mettre en sourdine ou de rediriger les notifications d'alerte vers des canaux spécifiques (emails, Slack, etc.).

## Dashboard
**Définition :** Interface visuelle dans Grafana utilisée pour afficher et suivre les métriques de monitoring sous forme de graphiques, tableaux et autres visualisations. Les dashboards permettent de comprendre rapidement l'état de l'infrastructure.

## Exporter
**Définition :** Composant logiciel qui expose les métriques dans un format lisible par Prometheus. Par exemple, `node_exporter` est utilisé pour surveiller les métriques des systèmes Linux.

## Grafana
**Définition :** Outil open-source utilisé pour la visualisation de données de monitoring. Grafana se connecte à plusieurs sources de données, y compris Prometheus, et permet de créer des dashboards interactifs.

## Labels
**Définition :** Paires clé-valeur attachées aux séries de données dans Prometheus, utilisées pour filtrer et organiser les métriques. Les labels permettent de catégoriser et de distinguer différentes sources de métriques.

## Métriques
**Définition :** Valeurs quantitatives collectées sur des systèmes ou applications (ex. : utilisation de la mémoire, temps de réponse, nombre de requêtes). Ces données sont surveillées par Prometheus et visualisées dans Grafana.

## Prometheus
**Définition :** Système de monitoring open-source orienté sur la collecte de métriques en temps réel, conçu pour surveiller les systèmes distribués. Prometheus est utilisé pour collecter, stocker et interroger des métriques.

## Query (PromQL)
**Définition :** Langage de requête de Prometheus permettant d'interroger et de récupérer des métriques. PromQL permet d'effectuer des calculs et des agrégations sur les données collectées.

## Scraping
**Définition :** Processus par lequel Prometheus collecte des métriques depuis les endpoints configurés. Le scraping se fait à des intervalles réguliers pour obtenir des données en temps réel.

## Séries Temporelles
**Définition :** Représentation de l'évolution d'une métrique dans le temps. Chaque série temporelle est identifiée par une métrique et des labels associés.

## Targets (Cibles)
**Définition :** Points de terminaison surveillés par Prometheus pour collecter des métriques. Les targets peuvent être des applications, des services, ou des serveurs exposant des métriques via des exporteurs.
