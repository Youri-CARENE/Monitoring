
# Guide Complet pour Grafana


## Contenu
- [1. Installation de Grafana](#1-installation-de-grafana)
- [2. Configuration de Grafana](#2-configuration-de-grafana)
- [3. Création de Tableaux de Bord dans Grafana](#3-création-de-tableaux-de-bord-dans-grafana)

---

### 1. Installation de Grafana

Pour installer Grafana, suivez ces étapes simples :

1. **Téléchargement**  
   Accédez au site officiel de Grafana [grafana.com](https://grafana.com/grafana/download) et téléchargez la version compatible avec votre système d'exploitation.

2. **Installation**  
   - Suivez les instructions spécifiques à votre système d’exploitation pour installer Grafana.
   - Sous Linux, vous pouvez généralement utiliser le gestionnaire de paquets (par exemple, `apt` ou `yum`) pour installer Grafana.

3. **Lancement de Grafana**  
   Une fois installé, démarrez Grafana avec la commande suivante :
   ```bash
   sudo systemctl start grafana-server
   ```
   Grafana est par défaut accessible sur le port `3000`. Ouvrez un navigateur et accédez à `http://localhost:3000` pour vérifier que l'installation a été réussie.

### 2. Configuration de Grafana

Après l'installation, voici les étapes pour configurer Grafana et le connecter à une source de données comme Prometheus.

1. **Connexion à Prometheus**  
   - Connectez-vous à l'interface Grafana (`http://localhost:3000`).
   - Allez dans **Configuration > Data Sources** et sélectionnez **Prometheus** comme type de source de données.
   - Renseignez l'URL de Prometheus, qui est généralement `http://localhost:9090`.

2. **Paramètres de Base**  
   Configurez les paramètres de base, comme l'intervalle de collecte des données et les options d'affichage par défaut.

3. **Sauvegarde et Test de la Connexion**  
   Cliquez sur **Save & Test** pour vérifier que la connexion avec Prometheus est bien établie.

### 3. Création de Tableaux de Bord dans Grafana

Avec Grafana configuré, vous pouvez maintenant créer des tableaux de bord pour visualiser vos métriques.

1. **Créer un Nouveau Tableau de Bord**  
   - Accédez à **Dashboard > New Dashboard**.
   - Ajoutez un nouveau panneau (panel) en sélectionnant le type de graphique que vous souhaitez utiliser (ligne, jauge, etc.).

2. **Configurer les Panneaux (Panels)**  
   - Sélectionnez la source de données (Prometheus) pour chaque panneau.
   - Entrez une requête PromQL pour récupérer les données souhaitées (ex: `up`, `node_cpu_seconds_total`, etc.).

3. **Personnaliser les Graphiques**  
   Utilisez les options de personnalisation pour ajuster l'apparence des graphiques, comme les couleurs, les légendes, et les annotations.

4. **Sauvegarder et Partager le Tableau de Bord**  
   - Sauvegardez le tableau de bord une fois terminé.
   - Vous pouvez partager le tableau de bord avec d'autres utilisateurs en générant un lien ou en l’exportant sous forme de fichier JSON.

---

En suivant ce guide, vous serez en mesure d’installer, de configurer et de créer des tableaux de bord efficaces dans Grafana pour visualiser les données de monitoring de votre infrastructure. Pour plus de détails, consultez la documentation officielle de Grafana.
