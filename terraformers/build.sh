#!/bin/sh

docker rmi nmrmsys/terraformers
docker build -t nmrmsys/terraformers .

