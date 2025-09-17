FROM nginx:alpine

# Supprimer le site par défaut
RUN rm -rf /usr/share/nginx/html/*

# Copier le dossier généré par Hugo
COPY public/ /usr/share/nginx/html/

# Ajuster les permissions
RUN chown -R nginx:nginx /usr/share/nginx/html \
    && chmod -R 755 /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
