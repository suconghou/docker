#!/bin/bash
docker build --add-host php.net:216.189.56.54 --add-host bigsearcher.com:216.189.56.54 -t=suconghou/php -t=suconghou/php:7.3.6 . && \
docker build -t=suconghou/php:cli . -f Dockerfile-cli && \
docker build -t=suconghou/php:fpm . -f Dockerfile-fpm
