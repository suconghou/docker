#!/bin/bash
docker pull alpine
BUILDSH=$(cat build.sh)
docker run -it --name tmpbuild alpine sh -c "$BUILDSH"
rm -f ./haproxy.tar.gz
docker cp tmpbuild:/haproxy.tar.gz ./haproxy.tar.gz
docker rm tmpbuild
docker build -t=suconghou/haproxy .
