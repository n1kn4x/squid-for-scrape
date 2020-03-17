FROM alpine:3.11

MAINTAINER Niklas Pirnay <niklas@pirnay.com>

RUN apk add squid
RUN apk add apache2-utils
RUN mkdir /usr/etc
RUN mkdir -p /etc/squid/

EXPOSE 3128
VOLUME /var/log/squid

ADD init /init
#replace the squid config file
ADD squid.conf /etc/squid/squid.conf

CMD ["/init"]
