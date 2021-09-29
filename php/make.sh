#!/bin/bash
docker build -t=suconghou/php -t=suconghou/php:8.0.11 . && \
docker build -t=suconghou/php:cli . -f Dockerfile-cli && \
docker build -t=suconghou/php:fpm . -f Dockerfile-fpm
