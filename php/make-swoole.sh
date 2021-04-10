#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:8.0.3_swoole_4.6.5 . -f Dockerfile-swoole
