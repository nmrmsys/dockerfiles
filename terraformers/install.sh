#!/bin/sh

# set default region
if [ "$1" == "" ]; then
    DRG=ap-northeast-1
else
    DRG=$1
fi

TRD=`dirname $0`
HMD=~

# create default terraformers config
if [ ! -f $HMD/.terraformers ]; then
cat <<EOF > $HMD/.terraformers
# general settings
tfstate_control=true
history_backup=true
backend_setting=true

# backend settings
backend=S3
access_key=xxx
secret_key=xxx
region=$DRG
bucket=terraformers
EOF
    chmod 600 $HMD/.terraformers
fi

# path setting for Cygwin
if [ -x "`which cygpath`" ]; then
    TRD=`cygpath -ma $TRD`
    HMD=`cygpath -ma $HMD`
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

