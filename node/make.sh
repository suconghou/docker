#!/bin/bash
# 内存小的机器用 MAKE_JOBS=-j2 ./make.sh 限制编译并发,默认 -j$(nproc)
docker build -t=suconghou/node -t=suconghou/node:24.22.1 ${MAKE_JOBS:+--build-arg MAKE_JOBS=$MAKE_JOBS} .
