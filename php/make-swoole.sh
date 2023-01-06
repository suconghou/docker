#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:8.2.1_swoole_5.0.1 . -f Dockerfile-swoole
