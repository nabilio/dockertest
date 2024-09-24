# Utiliser l'image de base Nginx
FROM nginx:alpine

# Supprimer la configuration par défaut de Nginx
RUN rm /usr/share/nginx/html/*

# Ajouter un fichier HTML personnalisé
COPY index.html /usr/share/nginx/html/

# Exposer le port 80
EXPOSE 80

# Démarrer Nginx
CMD ["nginx", "-g", "daemon off;"]
