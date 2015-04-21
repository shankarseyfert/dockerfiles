FROM sctrcdr/ubuntu-base
MAINTAINER Stephen Masters <steve@scattercode.co.uk>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get upgrade -q -y
RUN apt-get install -y apache2 libapache2-mod-php5 php5-mysql pwgen php-apc php5-mcrypt
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
RUN apt-get clean

COPY run.sh /run.sh
COPY start-apache2.sh /start-apache2.sh
COPY supervisord-apache2.conf /etc/supervisor/conf.d/supervisord-apache2.conf

COPY apache_default /etc/apache2/sites-available/000-default.conf
RUN a2enmod rewrite

RUN rm -f /var/www/html/index.html
COPY index.php /var/www/html/index.php

ENV PHP_UPLOAD_MAX_FILESIZE 10M
ENV PHP_POST_MAX_SIZE 10M

EXPOSE 80 443
CMD ["/run.sh"]
