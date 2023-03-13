# Utilise une image de Node.js comme base
FROM node:16

# Définit le répertoire de travail
WORKDIR /app

# Copie les fichiers package.json et package-lock.json dans le conteneur
COPY package*.json ./

# Installe les dépendances
RUN npm install

# Copie les fichiers du projet dans le conteneur
COPY . .

# Expose le port 3000 pour que le conteneur puisse être accessible depuis l'extérieur
EXPOSE 3000

# Définissez une variable d'environnement
ENV NODE_ENV=DEV

# Définit la commande par défaut à exécuter lorsque le conteneur démarre
CMD ["npm", "start"]
