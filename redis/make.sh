#!/bin/bash
docker build -t=suconghou/redis -t=suconghou/redis:5.0.6 -t=suconghou/redis:alpine . && \
docker build -t=suconghou/redis:busybox . -f Dockerfile-busybox
