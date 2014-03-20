FROM ubuntu:12.04
MAINTAINER Ben Firshman <ben@orchardup.com>
RUN apt-get update -qq
RUN apt-get install -y python-software-properties sudo
ENV DEBIAN_FRONTEND noninteractive
RUN apt-add-repository -y ppa:chris-lea/redis-server
RUN apt-get update -qq
RUN apt-get install -y redis-server
ADD run /usr/local/bin/run
EXPOSE 6379
VOLUME ["/var/lib/redis"]
CMD ["/usr/local/bin/run"]
