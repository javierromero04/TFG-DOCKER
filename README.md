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
---
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
---
## 📊 Monitorización
Incluye configuración para Prometheus y Grafana en contenedores, con dashboards y métricas accesibles desde el navegador:

Grafana: http://localhost:3000
Prometheus: http://localhost:9090

## 🔄 Orquestación y Automatización
Kubernetes: despliegue de contenedores usando kubectl y minikube
Terraform: automatización de recursos con main.tf usando LocalStack

## 📚 Conclusión
Elegí Docker como tema porque sabía que me iba a ser útil, no solo para sacar el proyecto
adelante, sino también para aprender algo que realmente me sirviera en el trabajo y de cara al
futuro. Justo en mis prácticas estoy trabajando con esta tecnología, así que todo lo que he ido
aprendiendo durante el proyecto me ha servido directamente para desenvolverme mejor en el día a
día.
Durante el proceso he tenido que enfrentarme a muchas cosas que no conocía: comandos,
configuraciones, errores… Pero eso ha hecho que aprenda mucho más. No solo ha sido seguir
tutoriales, he tenido que entender que estaba haciendo y el por qué. Muchas veces me he atascado
y otras he podido avanzar más rápido, pero por lo general me ha ayudado a crecer en conocimientos
de esta tecnología, a buscar soluciones y a organizarme mejor.
He podido ver sobre muchas herramientas que están relacionadas con Docker, algunas eran
más sencillas y otras mucho más complejas, pero cada una me ha ido aportando conocimientos.
Una de las cosas que más he aprendido a valorar ha sido el tener una documentación actualizada
sobra esta tecnología, ya que evoluciona de manera rápida. También he aprendido a ser metódico,
algo que al principio no había tenido en cuenta y que ahora considero que es un factor muy
importante para realizar este tipo de trabajo.
En definitiva, este trabajo me ha ayudado a crecer en el ámbito de esta tecnología, dándome
una base sólida para mi futuro profesional.

## 🌐 WEBGRAFÍA

Docker (RedHat)

Openinnova - Qué es Docker

Docker Docs Oficiales

Comparativa Docker vs Máquinas Virtuales (AWS)

Apache HTTP Server

Nginx

Grafana

Prometheus

Portainer

Kubernetes

Terraform

Jess Frazelle Dockerfiles
