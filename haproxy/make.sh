#!/bin/bash
docker build -t=suconghou/haproxy -t=suconghou/haproxy:2.4.0 -t=suconghou/haproxy:alpine . && \
docker build -t=suconghou/haproxy:busybox . -f Dockerfile-busybox
