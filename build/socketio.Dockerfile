FROM node:16-slim

# Instalar dependencias necesarias
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    && apt-get clean

# Crear directorio de trabajo
WORKDIR /home/frappe/socketio

# Copiar el archivo package.json
COPY socketio/package.json /home/frappe/socketio/

# Instalar dependencias
RUN npm install

# Copiar el archivo socketio.js
COPY socketio/socketio.js /home/frappe/socketio/

# Comando de inicio
CMD ["node", "socketio.js"]
