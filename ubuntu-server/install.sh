#!/bin/sh

# create container
docker run -d --privileged --restart=unless-stopped \
    -p 30022:22 \
    --name ubuntu-server nmrmsys/ubuntu-server
