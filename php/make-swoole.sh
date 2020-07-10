#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:7.4.8_swoole_4.5.2 . -f Dockerfile-swoole
