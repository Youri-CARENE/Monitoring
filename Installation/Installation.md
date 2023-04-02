Ouvrez un terminal et exécutez la commande suivante pour mettre à jour la liste des paquets et installer les mises à jour disponibles:

 
sudo apt update && sudo apt upgrade -y
Installer Prometheus:
a. Créez un utilisateur Prometheus et téléchargez le binaire:

 
sudo useradd --no-create-home --shell /bin/false prometheus
wget https://github.com/prometheus/prometheus/releases/download/v2.30.3/prometheus-2.30.3.linux-amd64.tar.gz
b. Extrayez l'archive et déplacez les fichiers dans les répertoires appropriés:

 
tar xvf prometheus-2.30.3.linux-amd64.tar.gz
sudo mv prometheus-2.30.3.linux-amd64/prometheus /usr/local/bin/
sudo mv prometheus-2.30.3.linux-amd64/promtool /usr/local/bin/
sudo mkdir /etc/prometheus
sudo mv prometheus-2.30.3.linux-amd64/prometheus.yml /etc/prometheus/
sudo chown -R prometheus:prometheus /etc/prometheus
c. Créez un fichier de service systemd pour Prometheus:

 
sudo nano /etc/systemd/system/prometheus.service
Ajoutez le contenu suivant au fichier:

 
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
d. Activez et démarrez le service Prometheus:

 
sudo systemctl daemon-reload
sudo systemctl enable prometheus
sudo systemctl start prometheus
Prometheus est maintenant installé et fonctionne sur le port 9090.

Installer Grafana:
a. Ajoutez le dépôt Grafana:

 
wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -
echo "deb https://packages.grafana.com/oss/deb stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list
b. Installez Grafana:

 
sudo apt update
sudo apt install -y grafana
c. Activez et démarrez le service Grafana:

 
sudo systemctl enable grafana-server
sudo systemctl start grafana-server
Grafana est maintenant installé et fonctionne sur le port 3000.

Configurer Grafana:
a. Ouvrez votre navigateur et accédez à http://<IP_de_votre_serveur>:3000.

b. Connectez-vous avec l'identifiant par défaut (admin) et le mot de passe (admin). Vous serez invité à changer le mot de passe après la première connexion.

c. Ajoutez Prometheus comme source de données:

Cliquez sur l'icône de l'engrenage (Configuration) dans la barre latérale gauche.
Sélectionnez "Data Sources".
Cliquez sur "Add data source".
Choisissez "Prometheus"