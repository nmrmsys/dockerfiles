#!/bin/sh

docker rmi nmrmsys/ubuntu-server
docker build -t nmrmsys/ubuntu-server --force-rm=true .

