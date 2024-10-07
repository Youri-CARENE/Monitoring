# Mon Projet DevOps avec Jenkins, Docker, et SonarQube

## Description
Ce projet utilise Jenkins pour CI/CD, Docker pour la containerisation, et SonarQube pour l'analyse de la qualité du code. Il est conçu pour être facilement déployable et permet une analyse complète de la qualité et des performances du code.

## Caractéristiques
- **CI/CD avec Jenkins** : Pipelines pour la construction, les tests et le déploiement.
- **Analyse de la qualité avec SonarQube** : Intégration de SonarQube pour la dette technique et les vulnérabilités.
- **Containerisation avec Docker** : Utilisation de Docker pour exécuter des environnements de développement reproductibles.
- **Base de données PostgreSQL** : Intégration avec une base de données PostgreSQL.

## Prérequis
- **Docker** : Installer Docker et Docker Compose.
- **Jenkins** : Configuré pour exécuter des pipelines.
- **SonarQube** : Pour l'analyse de code.

## Démarrage
1. Clonez le projet :
    ```bash
    git clone https://github.com/votre-nom/votre-projet.git
    cd votre-projet
    ```

2. Démarrez les services Docker :
    ```bash
    docker-compose up -d
    ```

3. Accédez à Jenkins :
    - URL : `http://localhost:8080`
    - Identifiants par défaut : `admin/admin`

4. Lancer une analyse SonarQube :
    - URL : `http://localhost:9000`
    - Utilisez le token généré dans l'interface SonarQube pour lancer l'analyse avec SonarScanner.

## Structure du projet
- **/sonarqube** : Configuration pour SonarQube.
- **/jenkins** : Pipeline CI/CD avec Jenkins.
- **/scripts** : Scripts de build, test, et déploiement.
- **/docker** : Fichiers Docker et Docker Compose.

## Contributions
Les contributions sont les bienvenues. Veuillez consulter le fichier [CONTRIBUTING.md](CONTRIBUTING.md) pour plus de détails.

