#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:8.0.8_swoole_4.6.7 . -f Dockerfile-swoole
