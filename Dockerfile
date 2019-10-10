FROM node:12-alpine

LABEL author="Laurin Quast <laurinquast@googlemail.com>"

ENV DOCKER_COMPOSE_VERSION="1.24.1"

RUN apk add --no-cache docker py-pip python-dev libffi-dev openssl-dev gcc libc-dev make \
    \
    && pip install docker-compose \
    \
    && docker-compose --version

COPY dockerd-entrypoint.sh /usr/local/bin/

CMD [ "node" ]
