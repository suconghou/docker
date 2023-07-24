#!/bin/bash
docker build -t=suconghou/redis -t=suconghou/redis:7.0.12 -t=suconghou/redis:alpine . && \
docker build -t=suconghou/redis:busybox . -f Dockerfile-busybox
