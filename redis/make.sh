#!/bin/bash
docker build -t=suconghou/redis -t=suconghou/redis:6.2.5 -t=suconghou/redis:alpine . && \
docker build -t=suconghou/redis:busybox . -f Dockerfile-busybox
