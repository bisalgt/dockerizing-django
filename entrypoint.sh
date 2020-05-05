#!/bin/sh


if ["$DATABASE" = "postgres"]
then
    echo "waiting for postgres..."

    while ! nc -z $SQL_HOST $SQL_PORT; do
      sleep 0.1
    done

    echo "POSTGRES STARTED!!!"
fi


python manage.py flush --no-input
python manage.py migrate


exec "$@"
