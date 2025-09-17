# Utilise l'image officielle MySQL
FROM mysql:8.0

# Déclare un argument de build pour le mot de passe root
ARG MYSQL_ROOT_PASSWORD

# Définit la variable d'environnement MYSQL_ROOT_PASSWORD à partir de l'argument
ENV MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD}

# Crée un dossier ./mysql-data/ et mets-y tes scripts SQL si besoin
COPY ./mysql-data/ /docker-entrypoint-initdb.d/

