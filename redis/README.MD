## redis

redis docker image

redis version 5.0.3

website http://redis.io/

all redis version release here http://download.redis.io/releases/


```
docker run -d suconghou/redis redis-server
```


## dockerfile

https://github.com/suconghou/docker/tree/master/redis


docker image  https://hub.docker.com/r/suconghou/redis/

## quick start

just for development `docker run --rm -it -p 6379:6379  suconghou/redis redis-server --protected-mode no`


`redis-server --daemonize yes`
or
`redis-server --protected-mode no --daemonize yes`

with password auth

`redis-server --protected-mode no --daemonize yes --requirepass QAZwsx123edcvfr654JKL`
