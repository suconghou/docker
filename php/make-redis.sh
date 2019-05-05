#!/bin/bash
docker build -t=suconghou/php:redis -t=suconghou/php:7.3.5_redis . -f Dockerfile-redis
