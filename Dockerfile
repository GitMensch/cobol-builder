FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive
RUN apt update -y -q && apt upgrade -y -q
RUN apt install -y -q \
    curl \
    gcc \
    git \
    libdb5.3-dev \
    libgmp-dev \
    libjson-c-dev \
    libxml2-dev \
    make \
    patchelf \
    xz-utils

COPY build /root

WORKDIR /root
