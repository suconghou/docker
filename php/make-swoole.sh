#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:8.0.0_swoole_4.6.0 . -f Dockerfile-swoole
