#!/bin/bash
docker build -t=suconghou/haproxy -t=suconghou/haproxy:1.8.1 -t=suconghou/haproxy:alpine . && \
docker build -t=suconghou/haproxy:busybox . -f Dockerfile-busybox
