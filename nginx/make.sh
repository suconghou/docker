#!/bin/bash
docker build -t=suconghou/nginx -t=suconghou/nginx:1.25.1 -t=suconghou/nginx:alpine . && \
docker build -t=suconghou/nginx:busybox . -f Dockerfile-busybox

