#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:8.5.12_swoole_6.2.4 . -f Dockerfile-swoole
