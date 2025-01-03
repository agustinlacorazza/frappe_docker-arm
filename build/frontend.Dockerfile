FROM node:16-slim

# Instalar dependencias para el frontend
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    && apt-get clean

# Crear directorio de trabajo
WORKDIR /home/frappe/frontend

# Instalar dependencias de frontend
COPY ./frontend/package.json ./frontend/
RUN npm install

# Comando de inicio
CMD ["npm", "start"]
