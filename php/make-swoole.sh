#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:7.4.0_swoole_4.4.13 . -f Dockerfile-swoole
