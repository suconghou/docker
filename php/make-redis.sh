#!/bin/bash
docker build -t=suconghou/php:redis -t=suconghou/php:7.4.11_redis . -f Dockerfile-redis
