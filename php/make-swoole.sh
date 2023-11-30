#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:8.2.13_swoole_5.1.1 . -f Dockerfile-swoole
