docker-redis
============
Build
    $ sudo docker build --tag=redis .

Redis on Docker.
    $ sudo docker run -d -v /usr/local/var/db/redis:/usr/local/var/db/redis:rw -name redis redis
    $ nc localhost 6379
    incr foo
    :1

