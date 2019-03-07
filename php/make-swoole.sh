#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:7.3.3_swoole_4.3.0 . -f Dockerfile-swoole
