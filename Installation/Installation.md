# Installer et Configurer Prometheus et Grafana

## Mise à jour du système

Pour mettre à jour la liste des paquets et installer les mises à jour disponibles, exécuter la commande suivante dans un terminal :

``` 
sudo apt update && sudo apt upgrade -y
```

## Installer Prometheus

1. **Créer un utilisateur Prometheus et télécharger le binaire**:

``` 
sudo useradd --no-create-home --shell /bin/false prometheus
wget https://github.com/prometheus/prometheus/releases/download/v2.30.3/prometheus-2.30.3.linux-amd64.tar.gz
```

2. **Extraire l'archive et déplacer les fichiers dans les répertoires appropriés**:

``` 
tar xvf prometheus-2.30.3.linux-amd64.tar.gz
sudo mv prometheus-2.30.3.linux-amd64/prometheus /usr/local/bin/
sudo mv prometheus-2.30.3.linux-amd64/promtool /usr/local/bin/
sudo mkdir /etc/prometheus
sudo mv prometheus-2.30.3.linux-amd64/prometheus.yml /etc/prometheus/
sudo chown -R prometheus:prometheus /etc/prometheus
```

3. **Créer un fichier de service systemd pour Prometheus**:

``` 
sudo nano /etc/systemd/system/prometheus.service
```

Ajouter le contenu suivant au fichier :

``` 
[Unit]
Description=Prometheus
Wants=network-online.target
After=network-online.target

[Service]
User=prometheus
Group=prometheus
Type=simple
ExecStart=/usr/local/bin/prometheus \
    --config.file /etc/prometheus/prometheus.yml \
    --storage.tsdb.path /var/lib/prometheus/ \
    --web.console.templates=/etc/prometheus/consoles \
    --web.console.libraries=/etc/prometheus/console_libraries

[Install]
WantedBy=multi-user.target
```

4. **Activer et démarrer le service Prometheus**:

``` 
sudo systemctl daemon-reload
sudo systemctl enable prometheus
sudo systemctl start prometheus
```

Prometheus est maintenant installé et fonctionne sur le port 9090.

## Installer Grafana

1. **Ajouter le dépôt Grafana**:

``` 
wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -
echo "deb https://packages.grafana.com/oss/deb stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list
```

2. **Installer Grafana**:

``` 
sudo apt update
sudo apt install -y grafana
```

3. **Activer et démarrer le service Grafana**:

``` 
sudo systemctl enable grafana-server
sudo systemctl start grafana-server
```

Grafana est maintenant installé et fonctionne sur le port 3000.

## Configurer Grafana

1. **Accéder à Grafana**:

Ouvrir un navigateur et accéder à `http://<IP_de_votre_serveur>:3000`.

2. **Se connecter à Grafana**:

Se connecter avec l'identifiant par défaut (`admin`) et le mot de passe (`admin`). Une demande de changement de mot de passe apparait après la première connexion.

3. **Ajouter Prometheus comme source de données**:

- Cliquer sur l'icône de l'engrenage (Configuration) dans la barre latérale gauche.
- Sélection