#!/bin/bash
docker build -t=suconghou/php:redis -t=suconghou/php:8.1.4_redis . -f Dockerfile-redis
