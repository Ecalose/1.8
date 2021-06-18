#!/bin/sh
sed -i 's|postgresql+psycopg2://${DB_USER}:${DB_PASSWORD}@${DB_HOST}:${DB_PORT}/${DB_DATABASE}|'${DATABASE_URL}'|g' /usr/src/app/docker-entrypoint.sh
sed -i 's|postgres://|postgresql+psycopg2://|g' /usr/src/app/docker-entrypoint.sh
/usr/src/app/docker-entrypoint.sh
