FROM hypriot/rpi-node:6.11.0

RUN mkdir /src
WORKDIR /src

ENTRYPOINT ["sh", "/scripts/main.sh"]
