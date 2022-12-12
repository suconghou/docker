#!/bin/bash
docker build -t=suconghou/php:redis -t=suconghou/php:8.2.0_redis . -f Dockerfile-redis
