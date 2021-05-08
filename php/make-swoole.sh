#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:8.0.6_swoole_4.6.6 . -f Dockerfile-swoole
