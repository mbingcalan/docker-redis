docker-redis
============
#### Build (also, see build.sh)

    $ sudo docker build -t musashi/redis .

#### Run

    $ sudo docker run -d -v /var/lib/redis:/var/lib/redis:rw -name redis musashi/redis
    $ nc localhost 6379
    incr foo
    :1
