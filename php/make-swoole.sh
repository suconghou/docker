#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:8.3.6_swoole_5.1.2 . -f Dockerfile-swoole
