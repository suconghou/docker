#!/bin/bash
docker build --add-host xmlsoft.org:103.79.76.128 --add-host download.savannah.gnu.org:103.79.76.128 -t=suconghou/php -t=suconghou/php:7.3.1 . && \
docker build -t=suconghou/php:cli . -f Dockerfile-cli && \
docker build -t=suconghou/php:fpm . -f Dockerfile-fpm
