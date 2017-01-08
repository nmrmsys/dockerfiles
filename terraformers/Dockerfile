FROM quay.io/dtan4/terraforming:latest
MAINTAINER nmrmsys nmrmsys@gmail.com

COPY README.md /root

RUN set -x && \
    echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories && \
    apk --update-cache --no-cache --upgrade add terraform groff less python py-pip jq && \
    pip install awscli && \
    apk --purge -v del py-pip && \
    rm -rf /var/cache/apk/* && \
    chmod -x /root/README.md && \
    mkdir /root/.aws && \
    echo -e "[default]\naws_access_key_id = xxx\naws_secret_access_key = xxx\n" \
        > /root/.aws/credentials && \
    echo -e "[default]\noutput = json\nregion = ap-northeast-1\n" \
        > /root/.aws/config && \
    mkdir /root/tf

ENV AWS_REGION ap-northeast-1
WORKDIR /root/tf
CMD ["cat", "/root/README.md"]
