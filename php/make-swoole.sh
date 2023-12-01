#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:8.3.0_swoole_5.1.1 . -f Dockerfile-swoole
