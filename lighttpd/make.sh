#!/bin/bash
docker pull alpine
BUILDSH=$(cat build.sh)
docker run -it --name tmpbuild alpine sh -c "$BUILDSH"
rm -f ./lighttpd.tar.gz
docker cp tmpbuild:/lighttpd.tar.gz ./lighttpd.tar.gz
docker rm tmpbuild
docker build -t=suconghou/lighttpd .
