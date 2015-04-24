FROM sctrcdr/ubuntu-base
MAINTAINER Stephen Masters <steve@scattercode.co.uk>

RUN apt-get update

# Add a repo where OpenJDK can be found.
RUN apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:openjdk-r/ppa

RUN apt-get install -y openjdk-8-jdk
