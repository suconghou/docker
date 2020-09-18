#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:7.4.10_swoole_4.5.4 . -f Dockerfile-swoole
