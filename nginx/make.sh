#!/bin/bash
docker pull alpine
BUILDSH=$(cat build.sh)
docker run -it --name tmpbuild alpine sh -c "$BUILDSH"
rm -f ./nginx.tar.gz
docker cp tmpbuild:/nginx.tar.gz ./nginx.tar.gz
docker rm tmpbuild
docker build -t=suconghou/nginx .
