FROM debian:7.8

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -yq install wget && \
    echo 'deb http://apt.canaltp.local/debian/repositories wheezy-production main non-free' > /etc/apt/sources.list.d/canaltp.list && \
    wget --output-document=- http://apt.canaltp.local/debian/repositories/canaltp.gpg.key | apt-key add - && \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -yq  install --no-install-recommends \
        curl \
        git \
        netcat \
        python-pip \
        python-dev \
        build-essential \
        protobuf-compiler \
        libpq-dev \
        supervisor \
        php5-cli \
        php5-pgsql \
        php5-curl \
        php5-intl \
        php-pear \
        php5-memcache \
        php5-memcached \
        php-apc && \
    rm -rf /var/lib/apt/lists/*

RUN pip install virtualenv
