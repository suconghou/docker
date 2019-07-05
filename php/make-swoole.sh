#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:7.3.7_swoole_4.3.5 . -f Dockerfile-swoole
