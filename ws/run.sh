#!/bin/bash

set -e

if [ ! -x /bin/nc ]; then
  apt-get update && apt-get -yq install netcat
fi

until nc -z database 5432
do
    echo "waiting for postgres container..."
    sleep 0.5
done

cd /var/www/Kronos
composer self-update
composer install -on
php app/console doctrine:schema:update --force
php app/console cache:clear --env=prod

source /etc/apache2/envvars
tail -F /var/log/apache2/* &
exec apache2 -D FOREGROUND
