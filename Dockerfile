# Utilise une image de base avec PHP et un serveur web (FPM)
FROM php:7.4-fpm-alpine

# Installe Nginx et les dépendances nécessaires
RUN apk add --no-cache nginx

# Configure Nginx pour servir les fichiers PHP
COPY nginx.conf /etc/nginx/nginx.conf

# Supprime le contenu par défaut et copie votre code source
RUN rm -rf /var/www/html/*
COPY . /var/www/html/

# Définit les permissions pour le serveur web
RUN chown -R www-data:www-data /var/www/html

# Expose le port 80 pour le serveur Nginx
EXPOSE 80

# Lance PHP-FPM et Nginx
CMD ["sh", "-c", "php-fpm -D && nginx -g 'daemon off;'"]