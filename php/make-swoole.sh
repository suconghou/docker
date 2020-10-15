#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:7.4.11_swoole_4.5.5 . -f Dockerfile-swoole
