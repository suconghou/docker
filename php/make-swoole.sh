#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:7.4.5_swoole_4.4.17 . -f Dockerfile-swoole
