#!/bin/sh

set -e

#CREATE USER AND DATABASE WITH POSTGIS EXTENSION
psql --command "CREATE USER postgres_app WITH SUPERUSER PASSWORD 'postgres_app';"
createdb -O postgres_app dmr_report
psql -d dmr_report -c "CREATE EXTENSION postgis;"
psql -d dmr_report -c "CREATE EXTENSION postgis_topology;"

#INJECT DUMP
psql -d dmr_report -f /tmp/dump.sql
