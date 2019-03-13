#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:7.3.3_swoole_4.3.1 . -f Dockerfile-swoole
