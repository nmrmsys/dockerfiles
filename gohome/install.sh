#!/bin/sh

# create container
docker run -d --privileged --restart=unless-stopped \
    --name gohome nmrmsys/gohome
#    -p 10022:22 -p 10080:80 -p 10443:443 -p 13306:3306
