FROM nginx:alpine
COPY . /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]


# Copier la configuration Nginx personnalisée
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copier les fichiers HTML/CSS/JS dans le dossier web de Nginx
COPY . /usr/share/nginx/html

CMD ["nginx", "-g", "daemon off;"]
