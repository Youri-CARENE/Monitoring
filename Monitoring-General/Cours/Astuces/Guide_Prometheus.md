
# Guide Complet pour Prometheus


## Contenu
- [1. Installation de Prometheus](#1-installation-de-prometheus)
- [2. Configuration de Prometheus](#2-configuration-de-prometheus)
- [3. Gestion des Alertes avec Prometheus](#3-gestion-des-alertes-avec-prometheus)

---

### 1. Installation de Prometheus

Pour commencer avec Prometheus, suivez ces étapes d'installation :

1. **Téléchargement**  
   Rendez-vous sur le site officiel de Prometheus [prometheus.io](https://prometheus.io/download/) et téléchargez la version compatible avec votre système d'exploitation.

2. **Installation**  
   - Décompressez le fichier téléchargé.
   - Placez le dossier décompressé dans votre répertoire souhaité.
   - Assurez-vous que le fichier exécutable `prometheus` est bien dans le répertoire.

3. **Lancement de Prometheus**  
   Exécutez la commande suivante dans le répertoire contenant l’exécutable :
   ```bash
   ./prometheus --config.file=prometheus.yml
   ```
   Par défaut, Prometheus fonctionne sur le port `9090`. Vous pouvez vérifier son statut en visitant `http://localhost:9090` dans un navigateur.

### 2. Configuration de Prometheus

La configuration de Prometheus se fait principalement via le fichier `prometheus.yml`. Voici les étapes clés pour configurer les cibles de monitoring et ajuster les paramètres :

1. **Structure de Base du Fichier `prometheus.yml`**  
   Le fichier `prometheus.yml` se compose des sections suivantes :
   ```yaml
   global:
     scrape_interval: 15s  # Intervalle de collecte des données

   scrape_configs:
     - job_name: 'exemple-job'
       static_configs:
         - targets: ['localhost:9090']
   ```

2. **Ajouter des Cibles (Targets)**  
   Pour ajouter des cibles spécifiques (par exemple, des serveurs ou des applications à monitorer), modifiez la section `scrape_configs` comme suit :
   ```yaml
   scrape_configs:
     - job_name: 'my_app'
       static_configs:
         - targets: ['localhost:8080']
   ```
   Vous pouvez ajouter plusieurs cibles dans cette section en fonction des besoins de votre infrastructure.

3. **Activer l’Exportation des Métriques**  
   Assurez-vous que les services que vous voulez surveiller exposent des métriques compatibles avec Prometheus. De nombreux frameworks et serveurs (comme Node.js, Java, etc.) offrent des bibliothèques pour exposer ces métriques.

### 3. Gestion des Alertes avec Prometheus

Prometheus permet de configurer des alertes pour surveiller des seuils spécifiques et envoyer des notifications en cas de problème. Voici comment configurer les alertes :

1. **Définir des Règles d'Alerte**  
   Les règles d'alerte sont définies dans un fichier séparé, généralement appelé `alert_rules.yml`. Voici un exemple de configuration pour surveiller l'utilisation CPU :
   ```yaml
   groups:
     - name: cpu_usage_alert
       rules:
         - alert: HighCPUUsage
           expr: node_cpu_seconds_total{mode="system"} > 80
           for: 5m
           labels:
             severity: "critical"
           annotations:
             summary: "Utilisation CPU élevée"
             description: "L'utilisation du CPU est supérieure à 80% depuis plus de 5 minutes."
   ```

2. **Charger les Règles dans Prometheus**  
   Assurez-vous que votre fichier `prometheus.yml` référence le fichier des règles d’alerte :
   ```yaml
   rule_files:
     - "alert_rules.yml"
   ```

3. **Configurer l'Alertmanager**  
   Pour envoyer les notifications, Prometheus utilise un composant séparé appelé **Alertmanager**. Installez et configurez Alertmanager pour diriger les alertes vers des canaux comme Slack, email, ou PagerDuty. Exemple de configuration pour Slack :
   ```yaml
   route:
     receiver: 'slack-notifications'

   receivers:
     - name: 'slack-notifications'
       slack_configs:
         - api_url: 'https://hooks.slack.com/services/T00000000/B00000000/XXXXXXXXXXXXXXXXXXXXXXXX'
           channel: '#alerts'
           send_resolved: true
   ```

---

En suivant ces étapes, vous serez en mesure d’installer, configurer, et gérer efficacement Prometheus pour surveiller votre infrastructure. N'hésitez pas à consulter la documentation officielle pour plus de détails et pour des configurations avancées.
