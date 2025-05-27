# Proyecto TFG - Contenedores con Docker

Este proyecto tiene como objetivo explorar y aplicar la tecnología Docker en distintos entornos y servicios, desde servidores web hasta herramientas de monitorización y orquestación como Kubernetes y Terraform. Se trata de una guía práctica desarrollada como Trabajo Fin de Grado en el ciclo de ASIR (Administración de Sistemas Informáticos en Red).

Autor: **Javier Romero Lancha**  
Centro: **CESUR Málaga Este**

---

## 📌 Objetivos del Proyecto

- Aprender cómo funciona Docker y su arquitectura.
- Ejecutar contenedores de aplicaciones reales y gráficas.
- Comparar contenedores Docker con máquinas virtuales.
- Utilizar herramientas como Docker Compose, Kubernetes y Terraform.
- Documentar todo el proceso para facilitar su comprensión y reutilización.

---

## 🛠️ Tecnologías utilizadas

- Docker / Docker Compose  
- Ubuntu 24.04 (en máquina virtual)  
- Kubernetes (Minikube y kubectl)  
- Terraform  
- Portainer  
- Prometheus & Grafana  
- Odoo, Apache, Nginx, VLC, Spotify, Tetris (contenedores gráficos)

---

---
## ⚙️ Instalación

1. Instala Docker:  
```bash
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
```
Habilita e inicia el servicio:

```bash
sudo systemctl enable docker
sudo systemctl start docker
```
Verifica instalación:

```bash
docker --version
docker run hello-world
```
🚀 Cómo levantar contenedores
Levantar Odoo con Docker Compose
```bash
yaml
Copiar
Editar
version: '3'
services:
  db:
    image: postgres:15
    environment:
      POSTGRES_DB: postgres
      POSTGRES_USER: odoo
      POSTGRES_PASSWORD: odoo
    networks:
      - odoo-net

  odoo:
    image: odoo:17
    ports:
      - "8069:8069"
    environment:
      HOST: db
      USER: odoo
      PASSWORD: odoo
    networks:
      - odoo-net

networks:
  odoo-net:
```
```bash
docker compose up -d
```
Accede en http://localhost:8069
📊 Monitorización
Incluye configuración para Prometheus y Grafana en contenedores, con dashboards y métricas accesibles desde el navegador:

Grafana: http://localhost:3000
Prometheus: http://localhost:9090

🔄 Orquestación y Automatización
Kubernetes: despliegue de contenedores usando kubectl y minikube
Terraform: automatización de recursos con main.tf usando LocalStack

