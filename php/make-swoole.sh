#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:7.4.6_swoole_4.5.1 . -f Dockerfile-swoole
