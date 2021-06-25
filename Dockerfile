# https://hub.docker.com/_/alpine
FROM alpine:latest

RUN apk --update --no-cache add \
      curl \
      jq

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
