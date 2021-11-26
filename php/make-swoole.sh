#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:8.1.0_swoole_4.8.2 . -f Dockerfile-swoole
