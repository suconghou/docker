#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:7.3.12_swoole_4.4.12 . -f Dockerfile-swoole
