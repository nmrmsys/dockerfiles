#!/bin/sh

# create container
docker run -d --privileged --restart=unless-stopped \
    -p 20022:22 \
    --name centos-server nmrmsys/centos-server
