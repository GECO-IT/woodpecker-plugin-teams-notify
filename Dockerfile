# syntax = docker/dockerfile:1
FROM alpine:3.20

LABEL maintainer="Geco-iT Team <contact@geco-it.fr>" \
      name="geco-it/woodpecker-teams-notify-plugin" \
      vendor="Geco-iT"

RUN apk add --no-cache bash curl file imagemagick

WORKDIR /data

COPY teams-notify.sh /usr/local/bin
COPY card.json .
RUN chmod +x /usr/local/bin/teams-notify.sh

ENTRYPOINT ["teams-notify.sh"]
