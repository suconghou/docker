#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:7.4.5_swoole_4.5.0 . -f Dockerfile-swoole
