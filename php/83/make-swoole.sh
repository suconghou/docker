#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:8.3.7_swoole_5.1.3 . -f Dockerfile-swoole
