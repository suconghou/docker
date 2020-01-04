#!/bin/bash
docker build --add-host github-production-release-asset-2e65be.s3.amazonaws.com:103.79.76.128 --add-host github.com:103.79.76.128 -t=suconghou/aria2 .
