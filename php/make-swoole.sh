#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:7.3.10_swoole_4.4.8 . -f Dockerfile-swoole
