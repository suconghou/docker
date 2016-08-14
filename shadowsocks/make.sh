#!/bin/bash
docker pull alpine
BUILDSH=$(cat shadowsocks-libev.sh)
docker run -it --name tmpbuild alpine sh -c "$BUILDSH"
rm -f ./shadowsocks-libev.tar.gz
docker cp tmpbuild:/shadowsocks-libev.tar.gz ./shadowsocks-libev.tar.gz
docker rm tmpbuild
docker build -t=suconghou/shadowsocks:libev -f Dockerfile-libev .
