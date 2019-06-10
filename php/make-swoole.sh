#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:7.3.6_swoole_4.3.4 . -f Dockerfile-swoole
