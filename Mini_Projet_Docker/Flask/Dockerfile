# Utiliser une image Python comme base
FROM python:3.8-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers requirements.txt et installer les dépendances
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copier le reste de l'application
COPY . .

# Exposer le port 5000 pour Flask
EXPOSE 5000

# Définir la commande de démarrage
CMD ["python", "app.py"]
