FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# Crear usuario no-root
RUN apt-get update && \
    apt-get install -y vlc x11-apps sudo pulseaudio && \
    useradd -m usuario && \
    apt-get clean

USER usuario
WORKDIR /home/usuario

CMD ["vlc"]
