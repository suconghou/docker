#!/bin/bash
docker build -t=suconghou/php:swoole -t=suconghou/php:7.4.12_swoole_4.5.8 . -f Dockerfile-swoole
