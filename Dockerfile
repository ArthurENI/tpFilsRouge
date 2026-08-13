# Utiliser une image de base officielle de Node.js
FROM node:24.13.1-alpine
# Définir le répertoire de travail dans le conteneur
WORKDIR /app
# Copier les fichiers de l'application dans le conteneur
COPY . .
# Installer les dépendances
RUN npm i
# Exposer le port sur lequel l'application s'exécute
EXPOSE 3000
# Commande pour exécuter l'application
CMD ["npm","run","start"]