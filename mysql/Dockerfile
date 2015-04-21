FROM sctrcdr/ubuntu-base
MAINTAINER Stephen Masters <steve@scattercode.co.uk>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get -y install mysql-server

VOLUME /var/lib/mysql

ADD docker-entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 3306
CMD ["mysqld"]
