#!/bin/sh

docker rmi nmrmsys/centos-server
docker build -t nmrmsys/centos-server --force-rm=true .

