#!/bin/bash
docker build -t=suconghou/lighttpd -t=suconghou/lighttpd:1.4.47 -t=suconghou/lighttpd:alpine . && \
docker build -t=suconghou/lighttpd:busybox . -f Dockerfile-busybox
