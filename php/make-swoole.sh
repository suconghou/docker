#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:8.1.4_swoole_4.8.8 . -f Dockerfile-swoole
