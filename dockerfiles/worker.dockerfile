# Utiliser une image Node.js LTS comme base
FROM node:lts

RUN mkdir -p /home/app

# Définir le répertoire de travail dans le conteneur
WORKDIR /home/app

# Copier les fichiers nécessaires dans le conteneur
COPY ./worker/package*.json .

COPY ./worker/main.js .

# Installer les dépendances
RUN npm install

# Commande pour démarrer l'application
CMD ["node", "main.js"]
