#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:8.2.3_swoole_5.0.2 . -f Dockerfile-swoole
