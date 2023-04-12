#!/bin/bash

# Build les images Docker
./Build_ALL_Images.sh


# Lance les conteneurs en arrière-plan
docker-compose up -d


chmod +x demo.sh

./demo.sh


# Afficher les logs des conteneurs
docker-compose logs -f

