#!/bin/sh

docker rmi nmrmsys/laraport:sqlsrv
docker build -f Dockerfile_sqlsrv -t nmrmsys/laraport:sqlsrv --force-rm=true .

