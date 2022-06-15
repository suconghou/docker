#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:8.1.7_swoole_4.8.10 . -f Dockerfile-swoole
