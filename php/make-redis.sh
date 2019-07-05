#!/bin/bash
docker build -t=suconghou/php:redis -t=suconghou/php:7.3.7_redis . -f Dockerfile-redis
