#!/bin/bash
docker build -t=suconghou/php:redis -t=suconghou/php:8.2.4_redis . -f Dockerfile-redis
