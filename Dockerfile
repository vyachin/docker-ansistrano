FROM debian:buster-slim

RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections \
    && apt update -yq \
    && apt upgrade -yq \ 
    && apt install ansible openssh-client -yq \
    && ansible-galaxy install --force ansistrano.deploy
