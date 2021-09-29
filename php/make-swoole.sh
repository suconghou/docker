#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:8.0.11_swoole_4.7.1 . -f Dockerfile-swoole
