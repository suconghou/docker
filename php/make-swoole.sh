#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:7.3.10_swoole_4.4.7 . -f Dockerfile-swoole
