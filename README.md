# L'instruction pour lancer le projet : 

## L'exo1 :

* Les Dockerfiles sont dans le dossier dockerfiles
* Pour créer les images, utilisez ces commands :
```
docker build -t image-planner -f ./dockerfiles/planner.dockerfile .
docker build -t image-worker -f ./dockerfiles/worker.dockerfile .  
``` 
* Pour lancer les conteneurs, utilisez ces commands : 
```
docker run --name worker-container -p 8080:8080 image-worker
docker run --name planner-container -p 3000:3000 image-planner
```