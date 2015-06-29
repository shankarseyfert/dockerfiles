FROM ingeus/php-base
MAINTAINER Stephen Masters <steve@scattercode.co.uk>

RUN apt-get install -y php5-gd php5-ldap php5-imap
RUN apt-get clean
RUN php5enmod imap

WORKDIR /var/www

# ADD https://www.limesurvey.org/en/stable-release/finish/25-latest-stable-release/1233-limesurvey205plus-build150413-tar-gz limesurvey.tar.gz
ADD https://www.limesurvey.org/en/stable-release?download=1309:limesurvey206plus-build150629targz limesurvey.tar.gz

RUN tar -xvf limesurvey.tar.gz
RUN rm -f limesurvey.tar.gz
RUN chown -R www-data:www-data limesurvey

VOLUME /var/www/limesurvey

COPY apache-limesurvey.conf /etc/apache2/sites-available/limesurvey.conf

RUN a2dissite 000-default
RUN a2ensite limesurvey

RUN supervisorctl restart apache2
