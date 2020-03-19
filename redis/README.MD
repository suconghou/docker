## redis

redis docker image

redis version 5.0.8

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

docker volume create redis-data

docker network create --driver overlay --attachable srv

```
docker run -d \
--name redis \
--restart always \
-m 100m \
--network srv \
-v redis-data:/data \
-e TZ="CST-8" \
--sysctl net.core.somaxconn=1024 \
-p 0.0.0.0:16379:6379 \
suconghou/redis:4.0.11 \
redis-server /etc/redis.conf --requirepass password --dir /data

```