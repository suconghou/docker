#!/bin/bash
docker build -t=suconghou/redis -t=suconghou/redis:6.0.4 -t=suconghou/redis:alpine . && \
docker build -t=suconghou/redis:busybox . -f Dockerfile-busybox
