#!/bin/bash
docker pull alpine
BUILDSH=$(cat build.sh)
docker run -it --name tmpbuild alpine sh -c "$BUILDSH"
rm -f ./memcached.tar.gz
docker cp tmpbuild:/memcached.tar.gz ./memcached.tar.gz
docker rm tmpbuild
docker build -t=suconghou/memcached .
