#!/bin/bash

# Créer les images:
docker build -t image-planner -f ./dockerfiles/planner.dockerfile .
docker build -t image-worker -f ./dockerfiles/worker.dockerfile . 

# Créer les conteneurs :
docker run --name worker-container -p 8080:8080 image-worker
docker run --name planner-container -p 3000:3000 image-planner