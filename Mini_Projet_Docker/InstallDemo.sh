#!/bin/bash

# Vérifie si le fichier Build_ALL_Images.sh existe
if [ -f "./Build_ALL_Images.sh" ]; then
  # Build les images Docker
  ./Build_ALL_Images.sh
else
  echo "Build_ALL_Images.sh n'existe pas."
  exit 1
fi

# Vérifie si le fichier docker-compose.yml existe
if [ -f "./docker-compose.yml" ]; then
  # Lance les conteneurs en arrière-plan
  docker-compose up -d
else
  echo "docker-compose.yml n'existe pas."
  exit 1
fi

# Vérifie si le fichier demo.sh existe et exécute-le
if [ -f "./demo.sh" ]; then
  chmod +x demo.sh
  ./demo.sh
else
  echo "demo.sh n'existe pas. Passer cette étape."
fi

# Afficher les logs des conteneurs
docker-compose logs -f
