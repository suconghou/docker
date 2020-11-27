#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:8.0.0_swoole_4.5.8 . -f Dockerfile-swoole
