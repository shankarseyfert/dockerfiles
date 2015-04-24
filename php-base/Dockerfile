FROM php:5.6-apache
MAINTAINER Stephen Masters <steve@scattercode.co.uk>

COPY policy-rc.d /usr/sbin/policy-rc.d

RUN apt-get update
RUN apt-get install -y supervisor
RUN apt-get clean

RUN a2enmod rewrite

WORKDIR /var/www

RUN a2ensite 000-default

COPY run.sh /run.sh
COPY start-apache2.sh /start-apache2.sh
COPY supervisord-apache2.conf /etc/supervisor/conf.d/supervisord-apache2.conf

EXPOSE 80

CMD ["/run.sh"]
