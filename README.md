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
## 📚 Teoria
¿QUÉ ES DOCKER?
Un contenedor Docker es un formato que empaqueta todo el código y las dependencias de
una aplicación en un formato estándar que permite su ejecución rápida y fiable en entornos
informáticos. Un contenedor de Docker es un conocido contenedor ejecutable, independiente, ligero
que integra todo lo necesario para ejecutar una aplicación, incluidas bibliotecas, herramientas del
sistema, código y tiempo de ejecución. Docker es también una plataforma de software que permite
a los desarrolladores crear, probar e implementar aplicaciones en contenedores de forma rápida.
Los servicios de contenedores o Containers as a Service (CaaS) son servicios gestionados
en la nube que administran el ciclo de vida de los contenedores. Los servicios de contenedores
ayudan a orquestar (iniciar, detener, ampliar) el tiempo de ejecución de los contenedores. Con los
servicios de contenedor, puede simplificar, automatizar y acelerar el desarrollo de sus aplicaciones
y el ciclo de vida de su implementación.
Los Docker y servicios de contenedores se han adoptado rápidamente y han tenido un gran
éxito en los últimos años. Docker ha evolucionado de una tecnología inicial de código abierto casi
desconocida y bastante técnica en 2013 a un entorno de ejecución estandarizado que ahora es
oficialmente compatible con multitud de productos de Oracle Enterprise.

## 📚 FUNCIONAMIENTO
La tecnología Docker utiliza el kernel de Linux y sus funciones, como los grupos de control
y los espacios de nombre, para dividir los procesos y ejecutarlos de manera independiente. El
propósito de los contenedores es ejecutar varios procesos y aplicaciones por separado para que se
pueda aprovechar mejor la infraestructura y, al mismo tiempo, conservar la seguridad que se
obtendría con los sistemas individuales.
Las herramientas de los contenedores, como Docker, proporcionan un modelo de
implementación basado en imágenes. Esto permite compartir fácilmente una aplicación o un
conjunto de servicios, con todas las dependencias en varios entornos. Docker también automatiza
la implementación de las aplicaciones (o los conjuntos de procesos que las constituyen) en el
entorno de contenedores.
Estas herramientas están diseñadas a partir de los contenedores de Linux, por eso la
tecnología Docker es sencilla y única. Además, ofrecen a los usuarios acceso sin precedentes a las
aplicaciones, la posibilidad de realizar implementaciones en poco tiempo y el control sobre las
versiones y su distribución.

## 📚 VENTAJAS
La adopción de Docker en el desarrollo de aplicaciones trae una serie de beneficios
que mejoran la eficiencia, la consistencia y la colaboración entre equipos.
Entre las principales ventajas de utilizar Docker se encuentran:
📖 MODULARIDAD
El enfoque de Docker seria como hacer las cosas por partes en vez de hacerlo todo a la vez.
Con Docker en vez de tener una aplicación grande haciendo todo el trabajo podríamos dividirla en
partes pequeñas como si fueran piezas (contenedores) encargadas de algo en específico.
Podríamos tener, por ejemplo, una parte que muestre una web y otra la base de datos, si se
cae una no se caería todo, arreglando la caída solucionaríamos el problema, también será más fácil
actualizar contenedores y moverlos.
Un ejemplo del funcionamiento sería que son como piezas de lego, cada contenedor es una
pieza y tú vas decidiendo como las juntas, otro ejemplo sería comparar Docker con una caja de
herramientas bien organizada, cada herramienta tiene su función y lugar.
📖 CAPAS Y CONTROL DE VERSIONES DE LAS IMÁGENES
Cada archivo está compuesto por varias capas que forman una sola imagen. Cuando el
usuario lanza un comando, como copiar, ejecutar, etc. la imagen cambia y se va creando una capa
nueva.
Docker va reutilizando las capas para agilizar el diseño de los contenedores nuevos. Cuando
haces cambios en las imágenes de Docker, esos cambios se van guardando por partes. Esto ayuda
a que todo funcione más rápido, ocupe menos espacio y sea más eficiente.
Además, Docker recuerda cada cambio que haces, como si llevara un historial. Gracias a
eso, puedes tener control total sobre tus contenedores y saber qué se modificó en cada momento.
📖  RESTAURACIÓN
Un gran beneficio de las capas es la capacidad que tiene de restaurar a versiones anteriores.
Cada imagen cuenta con las capas que se van creando. Si no te gusta una imagen actual puedes
restaurarla a una versión anterior a la que usas. Esto ayuda a trabajar de forma más rápida y flexible,
y permite que los cambios en el código se puedan probar y poner en marcha de manera constante usando las herramientas adecuadas.
📖  IMPLEMENTACIÓN RÁPIDA
Antes, poner en marcha un equipo de trabajo tardaba más tiempo, tenía más coste y costaba
más trabajo. Pero con Docker todo es más rápido y más manejable, al enfocarse en usar
contenedores y en hacer todo de forma más eficiente.

## 📚 DESVENTAJAS
Es fundamental sopesar las desventajas de cualquier herramienta o software nuevo para
determinar si es adecuado. Las principales desventajas de utilizar Docker serían las siguientes:
📖 Documentación obsoleta
La cultura de código abierto que sustenta Docker garantiza la constante evolución del
software. Si bien este ritmo vertiginoso de cambio es positivo en la mayoría de los aspectos, puede
implicar que la comunidad a veces se adelanta a los acontecimientos. Docker es conocido por
su extensa biblioteca de documentación, pero la nueva documentación no siempre puede seguir el
ritmo de las nuevas versiones y actualizaciones del software.
📖 La curva de aprendizaje.
Aprender lo básico no es necesariamente imposible, pero dominar Docker o alcanzar la
excelencia suele requerir mucho tiempo y esfuerzo. Las extensiones de Docker y otras herramientas
adicionales compatibles con Docker son útiles en muchos sentidos, pero también dificultan aún más
el aprendizaje del software.
📖 Seguridad
El aislamiento o la segmentación son principios importantes en la arquitectura de red
moderna, específicamente para evitar el riesgo de que varios contenedores o entornos se vean
afectados simultáneamente cuando un atacante vulnera el sistema host. Por lo tanto, si bien las
máquinas virtuales requieren espacio en el servidor y más memoria para funcionar, el hecho de que
cada una use su propio sistema operativo refuerza la seguridad. Es posible combatir estos
problemas de seguridad con los contenedores integrándolos en las infraestructuras existentes y
heredando sus estándares de seguridad, pero esto introduce aún más complejidad.

📖 Orquestación limitada
Aunque Docker ofrece algunas funciones de automatización, sus capacidades de
automatización y orquestación no son tan robustas como las de otras plataformas contenedorizadas
como Kubernetes. Sin una orquestación exhaustiva, puede resultar difícil gestionar varios
contenedores y entornos simultáneamente. Los equipos de DevOps dependen de la orquestación
para ser eficaces, por lo que usar Docker requeriría herramientas externas o de terceros.

## 🧱 Arquitectura de Docker
Docker utiliza una arquitectura cliente-servidor.
El cliente de Docker se comunica con el Docker Daemon, que se encarga de crear, ejecutar y distribuir los contenedores. Ambos pueden ejecutarse en el mismo sistema o en sistemas distintos (cliente remoto y daemon remoto).
El cliente de Docker acepta comandos del usuario y los envía al daemon para su ejecución.

## 🧩 Componentes clave
Imágenes
Son plantillas de solo lectura.
Una imagen puede tener un sistema operativo (como Ubuntu o CentOS) con servicios preinstalados (como Apache).
Los cambios realizados dentro de un contenedor no se guardan en la imagen original.
Registros
Repositorios públicos o privados donde se almacenan imágenes.
El registro más conocido es Docker Hub.
Contenedores
Son instancias de una imagen.
Cada contenedor es un entorno aislado con todo lo necesario para ejecutar una aplicación.

⚙️ Docker Engine y sus componentes
El Docker Engine es el corazón de Docker, basado también en una arquitectura cliente-servidor.

Servidor (dockerd): administra contenedores, imágenes, redes y volúmenes.
API REST: permite a otras aplicaciones comunicarse con el daemon.
CLI (Interfaz de Línea de Comandos): es el cliente desde donde ejecutamos comandos como docker run.

## 📦 Objetos Docker: Volúmenes y Redes
🗃️ Volúmenes
Son áreas especiales para almacenar datos fuera del contenedor.
Persisten aunque el contenedor se elimine o reinicie.
No incrementan el tamaño del contenedor.
Funcionan en Windows y Linux.

🌐 Redes
Docker permite que los contenedores se comuniquen entre sí mediante redes virtuales.
Tipos de redes disponibles:
Bridge: por defecto, conecta contenedores en un mismo host.
Host: el contenedor comparte la red del host (sin aislamiento).
None: sin conexión de red (totalmente aislado).
Overlay: permite comunicación entre contenedores en diferentes hosts (útil con Kubernetes).
Macvlan: asigna al contenedor una IP propia dentro de la red física.

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
