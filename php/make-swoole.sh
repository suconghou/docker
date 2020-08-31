#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:7.4.9_swoole_4.5.3 . -f Dockerfile-swoole
