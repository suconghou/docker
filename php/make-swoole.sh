#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:7.4.10_swoole_4.5.3 . -f Dockerfile-swoole
