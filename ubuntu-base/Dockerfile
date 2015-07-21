FROM ubuntu:trusty
MAINTAINER Stephen Masters <steve@scattercode.co.uk>

ENV DEBIAN_FRONTEND noninteractive

WORKDIR /root

ADD usr /usr

RUN apt-get update && apt-get install -y curl git supervisor unzip nano
