#!/bin/bash
docker build -t=suconghou/php:redis -t=suconghou/php:8.2.3_redis . -f Dockerfile-redis
