#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:8.4.15_swoole_6.1.3 . -f Dockerfile-swoole
