#!/bin/bash
docker build -t=suconghou/memcached -t=suconghou/memcached:1.5.20 -t=suconghou/memcached:alpine . && \
docker build -t=suconghou/memcached:busybox . -f Dockerfile-busybox
