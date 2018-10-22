#!/bin/bash
docker build -t=suconghou/redis -t=suconghou/redis:5.0.0 -t=suconghou/redis:alpine . && \
docker build -t=suconghou/redis:busybox . -f Dockerfile-busybox
