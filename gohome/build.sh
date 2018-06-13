#!/bin/sh

docker rmi nmrmsys/gohome
docker build -t nmrmsys/gohome --force-rm=true .

