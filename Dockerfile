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
    apt-get install curl apt-transport-https gnupg && \
    curl -s https://packages.mailpile.is/deb/key.asc |sudo apt-key add - && \
    echo "deb https://packages.mailpile.is/deb release main" |sudo tee /etc/apt/sources.list.d/000-mailpile.list && \
    apt-get update && \
    apt-get install mailpile && \
    apt-get update && \
    apt-get install mailpile-apache2        

WORKDIR /host
