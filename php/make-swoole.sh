#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:8.1.3_swoole_4.8.7 . -f Dockerfile-swoole
