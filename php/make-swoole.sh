#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:7.3.1_swoole_4.2.12 . -f Dockerfile-swoole
