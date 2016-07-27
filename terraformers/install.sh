#!/bin/sh

# set default region
if [ "$1" == "" ]; then
    DRG=ap-northeast-1
else
    DRG=$1
fi

# path setting for Cygwin
if [ -x "`which cygpath`" ]; then
    TRD=`cygpath -ma .`
    HMD=`cygpath -ma ~`
else
    TRD=$PWD
    HMD=~
fi 

# create container
docker run -d --name terraformers \
    --restart=unless-stopped \
    -e AWS_REGION=$DRG \
    -v $TRD/tf:/root/tf \
    nmrmsys/terraformers \
    tail -f /dev/null

# copy credentials
if [ -f $HMD/.aws/credentials ]; then
    docker cp $HMD/.aws/credentials terraformers:/root/.aws/credentials
fi

