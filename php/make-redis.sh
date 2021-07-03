#!/bin/bash
docker build -t=suconghou/php:redis -t=suconghou/php:8.0.8_redis . -f Dockerfile-redis
