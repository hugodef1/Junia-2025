# Utiliser l'image officielle de nginx comme base
FROM nginx:alpine

# Supprimer la configuration par défaut
RUN rm -rf /usr/share/nginx/html/*

# Copier le code source du projet dans le répertoire web de nginx
COPY . /usr/share/nginx/html

# Exposer le port 80
EXPOSE 80

# Lancer nginx
CMD ["nginx", "-g", "daemon off;"]
