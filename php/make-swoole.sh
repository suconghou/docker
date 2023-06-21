#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:8.2.6_swoole_5.0.3 . -f Dockerfile-swoole
