#!/bin/bash
docker build -t=suconghou/php:redis -t=suconghou/php:8.3.1_redis . -f Dockerfile-redis
