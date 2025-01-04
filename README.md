# Frappe Docker ARM64

Este repositorio es una versión adaptada para ejecutar ERPNext en arquitecturas ARM64, como Raspberry Pi.

## Requisitos
- Docker y Docker Compose instalados.

## Pasos para Instalar
1. Construye las imágenes personalizadas:
   ```bash
   docker buildx build --platform linux/arm64 -t alacorazza/frappe-backend-arm64:v14 -f build/backend.Dockerfile .
   docker buildx build --platform linux/arm64 -t alacorazza/frappe-frontend-arm64:v14 -f build/frontend.Dockerfile .
   docker buildx build --platform linux/arm64 -t alacorazza/frappe-socketio-arm64:v14 -f build/socketio.Dockerfile .
