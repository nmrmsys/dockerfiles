#!/bin/sh

# create container
docker run -d --privileged --restart=unless-stopped \
    -p 10022:22 \
    --name gohome nmrmsys/gohome
