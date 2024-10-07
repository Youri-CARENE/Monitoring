FROM elasticsearch:7.17.0

# Copier le fichier de configuration personnalisé
COPY elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml

# Changer les permissions pour l'utilisateur elasticsearch
RUN chown elasticsearch:elasticsearch /usr/share/elasticsearch/config/elasticsearch.yml
