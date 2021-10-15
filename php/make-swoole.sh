#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:8.0.11_swoole_4.8.0 . -f Dockerfile-swoole
