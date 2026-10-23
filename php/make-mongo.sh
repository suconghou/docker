#!/bin/bash
docker build -t=suconghou/php:mongo -t=suconghou/php:8.5.12_mongo . -f Dockerfile-mongo
