#!/bin/bash
docker build -t=suconghou/nginx -t=suconghou/nginx:1.19.3 -t=suconghou/nginx:alpine . && \
docker build -t=suconghou/nginx:busybox . -f Dockerfile-busybox

