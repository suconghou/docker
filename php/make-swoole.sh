#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:8.1.1_swoole_4.8.6 . -f Dockerfile-swoole
