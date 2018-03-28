#!/bin/bash
docker build -t=suconghou/redis -t=suconghou/redis:4.0.9 -t=suconghou/redis:alpine . && \
docker build -t=suconghou/redis:busybox . -f Dockerfile-busybox
