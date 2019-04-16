#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:7.3.4_swoole_4.3.2 . -f Dockerfile-swoole
