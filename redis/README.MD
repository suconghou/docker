## redis

redis docker image

redis version 4.0.7

website http://redis.io/

all redis version release here http://download.redis.io/releases/


```
docker run -d suconghou/redis redis-server
```

无其他依赖,可静态编译

## dockerfile

https://github.com/suconghou/docker/tree/master/redis


docker image  https://hub.docker.com/r/suconghou/redis/

## quick start

`redis-server --daemonize yes`
or
`redis-server --protected-mode no --daemonize yes`

with password auth

`redis-server --protected-mode no --daemonize yes --requirepass QAZwsx123edcvfr654JKL`
