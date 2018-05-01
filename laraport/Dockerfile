FROM centos:centos7.4.1708
LABEL maintainer "nmrmsys <nmrmsys@gmail.com>"

WORKDIR /root
RUN set -x && \
    yum -y install openssh-server initscripts && \
    sshd-keygen && \
    echo 'root:password' | chpasswd && \
    yum -y install httpd && \
    yum -y install mod_ssl && \
    systemctl enable httpd.service && \
    rpm -Uvh http://dev.mysql.com/get/mysql57-community-release-el7-11.noarch.rpm && \
    yum -y install --enablerepo=mysql57-community mysql-community-server && \
    systemctl enable mysqld.service && \
    yum -y install epel-release && \
    rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm && \
    yum -y install --enablerepo=remi,remi-php71 php php-devel php-mbstring php-pdo php-gd php-mysqlnd php-xml php-pear php-phpunit-PHPUnit && \
    yum -y install wget zip unzip && \
    curl -sS https://getcomposer.org/installer | php && \
    mv /root/composer.phar /usr/local/bin/composer

EXPOSE 22 80 443 3306

CMD ["/sbin/init"]
