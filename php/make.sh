#!/bin/bash
docker build -t=suconghou/php -t=suconghou/php:7.3.10 . && \
docker build -t=suconghou/php:cli . -f Dockerfile-cli && \
docker build -t=suconghou/php:fpm . -f Dockerfile-fpm
