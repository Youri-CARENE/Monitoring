# Fonctionnalités Avancées d'Elasticsearch

Elasticsearch est bien plus qu'un simple moteur de recherche. Il offre une variété de fonctionnalités avancées pour l'analyse des données, la gestion des performances, et la scalabilité.

## Agrégations

Les agrégations sont une fonctionnalité puissante d'Elasticsearch qui vous permet de regrouper et d'analyser les données.

- **Metrics Aggregations** : Permet de calculer des valeurs statistiques telles que les moyennes, les sommes, les minima et les maxima.
- **Bucket Aggregations** : Regroupe les documents en se basant sur des critères comme la plage de dates ou les valeurs de champs.

Exemple d'agrégation pour calculer la moyenne d'un champ :

```json
{
  "aggs": {
    "average_price": {
      "avg": {
        "field": "price"
      }
    }
  }
}
