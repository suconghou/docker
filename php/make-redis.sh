#!/bin/bash
docker build -t=suconghou/php:redis -t=suconghou/php:8.0.3_redis . -f Dockerfile-redis
