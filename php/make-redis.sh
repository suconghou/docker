#!/bin/bash
docker build -t=suconghou/php:redis -t=suconghou/php:8.4.15_redis . -f Dockerfile-redis
