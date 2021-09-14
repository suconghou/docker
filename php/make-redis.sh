#!/bin/bash
docker build -t=suconghou/php:redis -t=suconghou/php:8.0.10_redis . -f Dockerfile-redis
