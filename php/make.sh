#!/bin/bash
docker build -t=suconghou/php -t=suconghou/php:8.3.7 . && \
docker build -t=suconghou/php:cli . -f Dockerfile-cli && \
docker build -t=suconghou/php:fpm . -f Dockerfile-fpm
