# Imagen base mínima
FROM debian:buster-slim

LABEL maintainer="Jessie Frazelle <jess@linux.com>"

ENV DEBIAN_FRONTEND=noninteractive

# Instalar dependencias necesarias
RUN apt-get update && apt-get install -y \
    libcurl4 \
    libvpx5 \
    procps \
    --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

# Instalar herramientas para agregar repositorios
RUN buildDeps=' \
        ca-certificates \
        curl \
        gnupg \
    ' && set -x && \
    apt-get update && apt-get install -y $buildDeps --no-install-recommends && \
    curl -fsSL https://www.virtualbox.org/download/oracle_vbox_2016.asc | apt-key add - && \
    echo "deb http://download.virtualbox.org/virtualbox/debian buster contrib" > /etc/apt/sources.list.d/virtualbox.list && \
    apt-get update && \
    apt-get install -y virtualbox-5.2 --no-install-recommends && \
    apt-get purge -y --auto-remove $buildDeps && \
    rm -rf /var/lib/apt/lists/*

# Definir entrada del contenedor
ENTRYPOINT [ "/usr/bin/virtualbox" ]
