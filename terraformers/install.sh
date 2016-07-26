#!/bin/sh


if [ -x "`which cygpath`" ]; then
    TRD=`cygpath -ma .`
else
    TRD=$PWD
fi 

docker run -d --name terraformers \
    --restart=unless-stopped \
    -e AWS_REGION=ap-northeast-1 \
    -v $TRD/tf:/root/tf \
    nmrmsys/terraformers \
    tail -f /dev/null

