#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:7.3.9_swoole_4.4.6 . -f Dockerfile-swoole
