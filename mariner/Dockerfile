FROM mcr.microsoft.com/cbl-mariner/base/python:3

# From https://github.com/rastasheep/ubuntu-sshd/blob/master/Dockerfile.template

RUN tdnf update

RUN tdnf install -y openssh-server flock
RUN ssh-keygen -A

RUN echo 'root:root' |chpasswd

RUN sed -ri 's/^#?PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]