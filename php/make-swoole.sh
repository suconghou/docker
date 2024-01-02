#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:8.3.1_swoole_5.1.1 . -f Dockerfile-swoole
