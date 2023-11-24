FROM node:21-alpine3.17


RUN mkdir -p /home/app

# Définir le répertoire de travail dans le conteneur
WORKDIR /home/app

# Copier les fichiers nécessaires dans le conteneur
COPY ./planner/package*.json .

COPY ./planner/main.js .

# Installer les dépendances
RUN npm install
RUN npm install uuid


# Commande pour démarrer l'application
CMD ["node", "main.js"]
