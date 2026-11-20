#!/bin/bash
docker build -t=suconghou/php:mongo -t=suconghou/php:8.6.0_mongo . -f Dockerfile-mongo
