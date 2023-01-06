#!/bin/bash
docker build -t=suconghou/php:redis -t=suconghou/php:8.2.1_redis . -f Dockerfile-redis
