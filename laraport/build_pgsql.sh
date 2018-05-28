#!/bin/sh

docker rmi nmrmsys/laraport:pgsql
docker build -f Dockerfile_pgsql -t nmrmsys/laraport:pgsql --force-rm=true .

