FROM alpine:latest

RUN apk add --no-cache ansible \
    && ansible-galaxy install --force ansistrano.deploy
