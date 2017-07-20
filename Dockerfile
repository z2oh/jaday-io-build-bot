FROM node:boron

RUN mkdir /src
WORKDIR /src`

ENTRYPOINT ["sh", "/scripts/main.sh"]
