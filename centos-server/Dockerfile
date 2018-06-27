FROM centos:centos7.4.1708
LABEL maintainer "nmrmsys <nmrmsys@gmail.com>"

WORKDIR /root
RUN set -x && \
    yum -y install openssh-server initscripts which wget zip unzip vim git && \
    echo 'root:password' | chpasswd && \
    yum -y install make && \
    yum clean all

EXPOSE 22

CMD ["/sbin/init"]
