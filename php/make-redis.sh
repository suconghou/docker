#!/bin/bash
docker build -t=suconghou/php:redis -t=suconghou/php:7.4.9_redis . -f Dockerfile-redis
