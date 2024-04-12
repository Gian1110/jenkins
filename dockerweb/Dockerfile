# Usar la imagen oficial de Nginx como base
FROM nginx

# Copiar el archivo de configuración personalizado que reemplazará al archivo predeterminado de Nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Copiar el archivo HTML "Hola Mundo" al directorio de HTML predeterminado de Nginx
COPY index.html /usr/share/nginx/html/