#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:7.3.8_swoole_4.4.2 . -f Dockerfile-swoole
