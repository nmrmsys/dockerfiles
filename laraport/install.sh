#!/bin/sh

# create container
docker run -d --privileged --restart=unless-stopped \
    -p 22:22 -p 80:80 -p 443:443 -p 3306:3306 \
    --name laraport nmrmsys/laraport
