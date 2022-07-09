#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:8.1.8_swoole_4.8.11 . -f Dockerfile-swoole
