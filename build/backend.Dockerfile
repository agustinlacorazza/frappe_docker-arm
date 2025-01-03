FROM python:3.9-slim

# Instalar dependencias necesarias
RUN apt-get update && apt-get install -y \
    build-essential \
    libmariadb-dev \
    git \
    curl \
    && apt-get clean

# Crear el directorio para Frappe
WORKDIR /home/frappe

# Instalar Bench
RUN pip install frappe-bench

# Copiar los sitios si fuera necesario (opcional)
COPY ./sites /home/frappe/frappe-bench/sites

# Comando de inicio
CMD ["bench", "start"]
