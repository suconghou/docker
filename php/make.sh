#!/bin/bash
docker build --add-host www.php.net:103.79.76.128 --add-host xmlsoft.org:103.79.76.128 -t=suconghou/php -t=suconghou/php:7.4.0 . && \
docker build -t=suconghou/php:cli . -f Dockerfile-cli && \
docker build -t=suconghou/php:fpm . -f Dockerfile-fpm
