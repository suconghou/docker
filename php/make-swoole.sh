#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:8.0.12_swoole_4.8.1 . -f Dockerfile-swoole
