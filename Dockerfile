FROM ubuntu:latest

RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections \
    && apt update -yq \
    && apt upgrade -yq \ 
    && apt install ansible -yq \
    && ansible-galaxy install --force ansistrano.deploy
