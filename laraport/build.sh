#!/bin/sh

docker rmi nmrmsys/laraport
docker build -t nmrmsys/laraport --force-rm=true .

