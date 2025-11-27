#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:8.3.28_swoole_6.1.3 . -f Dockerfile-swoole
