#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:8.0.2_swoole_4.6.3 . -f Dockerfile-swoole
