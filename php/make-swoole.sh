#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:7.4.1_swoole_4.4.15 . -f Dockerfile-swoole
