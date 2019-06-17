#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:7.3.6_swoole_4.3.5 . -f Dockerfile-swoole
