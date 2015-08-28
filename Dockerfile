FROM centos:centos7.1.1503
MAINTAINER Anderson Rodriguez "andiirc@gmail.com"

RUN yum install -y openssh-server openssh-clients && \
    ssh-keygen -q -N "" -t dsa -f /etc/ssh/ssh_host_dsa_key && \
    ssh-keygen -q -N "" -t rsa -f /etc/ssh/ssh_host_rsa_key

RUN sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config
RUN sed -ri 's/#UsePAM no/UsePAM no/g' /etc/ssh/sshd_config

ADD /config/root.sh /opt/config/
RUN chmod +x /opt/config/root.sh

EXPOSE 22

CMD /opt/config/run.sh