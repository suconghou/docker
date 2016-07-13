#!/bin/bash
docker pull alpine
BUILDSH=$(cat build.sh)
docker run -it --name tmpbuild alpine sh -c "$BUILDSH"
rm -f ./redis.tar.gz
docker cp tmpbuild:/redis.tar.gz ./redis.tar.gz
docker rm tmpbuild
docker build -t=suconghou/redis .
