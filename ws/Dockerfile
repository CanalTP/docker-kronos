FROM debian:7.8

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -yq install \
        curl \
        apache2 \
        libapache2-mod-php5 \
        git \
        netcat \
        php5-pgsql \
        php5-curl \
        php5-intl \
        php-pear \
        php5-memcache \
        php5-memcached \
        php5-xdebug \
        php-apc && \
    rm -rf /var/lib/apt/lists/*

RUN a2enmod rewrite

ADD run.sh /run.sh
RUN chmod 755 /*.sh

ADD apache2_kronos-ws.local /etc/apache2/sites-available/kronos-ws.local.conf
RUN a2ensite kronos-ws.local.conf && a2dissite default

ADD composer.phar /usr/local/bin/composer

EXPOSE 80

CMD ["/run.sh"]
