FROM ubuntu:18.04
LABEL maintainer "nmrmsys <nmrmsys@gmail.com>"

WORKDIR /root
RUN set -x && \
    apt update && \
    apt install -y openssh-server zip unzip vim git && \
    sed -ri 's/^#?PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config && \
    echo 'root:password' | chpasswd && \
    apt install -y make && \
    apt clean

EXPOSE 22

CMD ["/sbin/init"]
