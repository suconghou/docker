#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:8.1.5_swoole_4.8.9 . -f Dockerfile-swoole
