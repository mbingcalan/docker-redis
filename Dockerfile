FROM ubuntu:14.04
MAINTAINER Michael Bingcalan <mbingcalan@agsx.net>

RUN apt-get update -qq
RUN apt-get install -y \
    software-properties-common \
    python-software-properties
RUN apt-add-repository -y ppa:chris-lea/redis-server
RUN apt-get update
RUN apt-get install -y redis-server
COPY docker-entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD [ "redis-server" ]
