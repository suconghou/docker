#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:8.6.0_swoole_6.2.6 . -f Dockerfile-swoole
