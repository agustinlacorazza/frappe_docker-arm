FROM node:16-slim

# Instalar dependencias para SocketIO
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    && apt-get clean

# Crear directorio de trabajo
WORKDIR /home/frappe/socketio

# Instalar dependencias de SocketIO
COPY ./socketio/package.json ./socketio/
RUN npm install

# Comando de inicio
CMD ["node", "socketio.js"]
