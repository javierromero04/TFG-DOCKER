FROM debian:bullseye-slim

RUN apt-get update && \
    apt-get install -y emacs-nox && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

CMD ["emacs", "-f", "tetris"]
