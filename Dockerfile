FROM raspbian/stretch

ARG DEBIAN_FRONTEND=noninteractive

# Prepare for upgrade
RUN sed -i 's/stretch/buster/g' /etc/apt/sources.list

RUN apt update
RUN apt -y dist-upgrade
RUN apt update
RUN apt upgrade

RUN apt-get -y --purge autoremove
RUN rm -rf /var/lib/apt/lists/*

