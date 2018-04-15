FROM ubuntu:16.04
ENV container docker
# Don't start any optional services except for the few we need.
RUN find /etc/systemd/system \
         /lib/systemd/system \
         -path '*.wants/*' \
         -not -name '*journald*' \
         -not -name '*systemd-tmpfiles*' \
         -not -name '*systemd-user-sessions*' \
         -exec rm \{} \;
RUN systemctl set-default multi-user.target
CMD ["/sbin/init"]

RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get -qq -y install curl && \
    apt-get -y install apt-transport-https gnupg

RUN curl -s https://packages.mailpile.is/deb/key.asc |apt-key add -
RUN echo "deb https://packages.mailpile.is/deb release main" |tee /etc/apt/sources.list.d/000-mailpile.list

RUN apt-get -y update && \
    apt-get -y install mailpile && \
    apt-get -y install mailpile-apache2

WORKDIR /host
