#!/bin/bash
docker build -t=suconghou/php:redis -t=suconghou/php:7.4.6_redis . -f Dockerfile-redis
