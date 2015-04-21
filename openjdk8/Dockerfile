FROM sctrcdr/ubuntu-base
MAINTAINER Stephen Masters <steve@scattercode.co.uk>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y software-properties-common
RUN add-apt-repository ppa:openjdk-r/ppa
RUN apt-get update && apt-get install -y openjdk-8-jdk
