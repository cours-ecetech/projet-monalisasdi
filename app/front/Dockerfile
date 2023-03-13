# Utilisez une image de base Node.js
FROM node:14

# Créez le répertoire de travail de l'application
WORKDIR /app

# Copiez le fichier package.json et le fichier package-lock.json dans le conteneur
COPY package*.json ./

# Installez les dépendances de l'application
RUN npm install

# Copiez tout le reste des fichiers de l'application dans le conteneur
COPY . .

# Exposez le port 3000 pour que l'application soit accessible depuis l'extérieur du conteneur
EXPOSE 5000

# Démarrez l'application
CMD [ "npm","start"]
