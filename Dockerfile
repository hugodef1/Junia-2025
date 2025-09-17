FROM nginx:alpine

# Supprimer le site par défaut
RUN rm -rf /usr/share/nginx/html/*

# Copier le code source de votre projet (le point . représente la racine du projet)
COPY . /usr/share/nginx/html/

# Ajuster les permissions
RUN chown -R nginx:nginx /usr/share/nginx/html \
    && chmod -R 755 /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]