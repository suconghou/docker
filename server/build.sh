#!/bin/bash

ln -f /data/git/docker/php/php.tar.gz /data/git/docker/server/php.tar.gz
ln -f /data/git/docker/nginx/nginx.tar.gz /data/git/docker/server/nginx.tar.gz
ln -f /data/git/docker/memcached/memcached.tar.gz /data/git/docker/server/memcached.tar.gz
ln -f /data/git/docker/redis/redis.tar.gz /data/git/docker/server/redis.tar.gz

docker build -t=suconghou/server .
