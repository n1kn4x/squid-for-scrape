FROM ubuntu:16.04

MAINTAINER Niklas Pirnay <niklas@pirnay.com>

RUN apt-get -qqy update
RUN apt-get -qqy upgrade
RUN apt-get -qqy install apache2-utils squid3
RUN mkdir /usr/etc
RUN mkdir -p /etc/squid3/

EXPOSE 3128
VOLUME /var/log/squid3

ADD init /init
#replace the squid config file
ADD squid.conf /etc/squid/squid.conf

CMD ["/init"]
