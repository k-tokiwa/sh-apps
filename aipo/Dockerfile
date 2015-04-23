FROM centos:centos6

RUN yum update -y
RUN yum install -y nano nmap tree
RUN yum install -y curl wget

RUN mkdir --verbose --parents /tmp/from_dockerfile
RUN ln -s /tmp/from_dockerfile ~/tmp

RUN yum install -y tar
RUN yum install -y net-tools
RUN yum install -y sudo

RUN touch /etc/sudoers.d/01_docker
RUN chmod 0440 /etc/sudoers.d/01_docker
RUN echo 'Defaults !requiretty' >> /etc/sudoers.d/01_docker

RUN yum install -y make gcc readline-devel zlib-devel nmap
RUN yum install -y lsof unzip

RUN wget "http://iij.dl.sourceforge.jp/aipo/63098/aipo-8.0-linux-x64.tar.gz" -O ~/tmp/aipo-8.0-linux-x64.tar.gz
RUN mkdir --verbose --parents ~/tmp/aipo_01
RUN tar -xvzf ~/tmp/aipo-8.0-linux-x64.tar.gz -C ~/tmp/aipo_01

RUN bash ~/tmp/aipo_01/aipo-8.0-linux-x64/installer.sh /usr/local/aipo
RUN rm -rf ~/tmp/aipo01
ADD src/cmd.sh /cmd.sh
RUN chmod +x /cmd.sh

RUN yum install -y rsync
RUN yum install -y openssh-clients

VOLUME ["/usr/local/aipo/backup"]
EXPOSE 80
WORKDIR /usr/local/aipo
CMD /cmd.sh
