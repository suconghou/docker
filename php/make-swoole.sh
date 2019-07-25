#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:7.3.7_swoole_4.4.1 . -f Dockerfile-swoole
