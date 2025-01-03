FROM node:16-slim

# Instalar dependencias necesarias
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    && apt-get clean

# Crear directorio de trabajo
WORKDIR /home/frappe/frontend

# Copiar el archivo package.json
COPY frontend/package.json /home/frappe/frontend/

# Instalar dependencias
RUN npm install

# Comando de inicio
CMD ["npm", "start"]
