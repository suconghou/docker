#!/bin/bash
docker pull alpine
BUILDSH=$(cat build.sh)
docker run -it --name tmpbuild alpine sh -c "$BUILDSH"
rm -f ./keepalived.tar.gz
docker cp tmpbuild:/keepalived.tar.gz ./keepalived.tar.gz
docker rm tmpbuild
docker build -t=suconghou/keepalived .
