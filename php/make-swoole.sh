#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:8.1.8_swoole_5.0.0 . -f Dockerfile-swoole
