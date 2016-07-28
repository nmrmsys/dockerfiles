FROM quay.io/dtan4/terraforming:latest
MAINTAINER nmrmsys nmrmsys@gmail.com

RUN set -x; \
    echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories; \
    apk update; \
    apk add terraform; \
    mkdir /root/.aws; \
    echo -e "[default]\naws_access_key_id = xxx\naws_secret_access_key = xxx" > /root/.aws/credentials; \
    mkdir /root/tf; \
    find /usr/bin -type f -name terraform-provider-\* | grep -v aws | xargs rm; \
    rm -rf /var/cache/apk/*

WORKDIR /root/tf

ENV AWS_REGION ap-northeast-1

COPY README.md /root

CMD ["cat", "/root/README.md"]

