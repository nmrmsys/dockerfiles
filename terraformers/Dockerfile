FROM quay.io/dtan4/terraforming:latest
MAINTAINER nmrmsys nmrmsys@gmail.com

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories; \
    apk update; \
    apk add terraform; \
    mkdir /root/.aws; \
    touch /root/.aws/credentials; \
    mkdir /root/tf; \
    find /usr/bin -type f -name terraform-provider-\* | grep -v aws | xargs rm; \
    rm -rf /var/cache/apk/*

WORKDIR /root/tf

ENV AWS_REGION ap-northeast-1

COPY README.md /root

CMD ["cat", "/root/README.md"]

