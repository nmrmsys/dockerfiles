FROM centos:centos7.4.1708
LABEL maintainer "nmrmsys <nmrmsys@gmail.com>"

ARG go_ver="1.10.3"

WORKDIR /root
RUN set -x && \
    yum -y install openssh-server initscripts && \
    echo 'root:password' | chpasswd && \
    yum -y install wget zip unzip git make && \
    curl -O https://dl.google.com/go/go${go_ver}.linux-amd64.tar.gz && \
    tar -C /usr -xzf go${go_ver}.linux-amd64.tar.gz && \
    mkdir -p /root/gopath/src/github.com/nmrmsys && \
    ln -s gopath/src/github.com/nmrmsys gohome && \
    yum clean all

ENV GOPATH /root/gopath
ENV PATH $PATH:/usr/go/bin:$GOPATH/bin

EXPOSE 22

CMD ["/sbin/init"]
