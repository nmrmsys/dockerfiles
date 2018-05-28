#!/bin/sh

# create container
docker run -d --privileged --restart=unless-stopped \
    -p 22:22 -p 80:80 -p 443:443 -p 1433:1433 \
    --name laraport nmrmsys/laraport:sqlsrv
