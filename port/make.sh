#!/bin/bash
docker build -t=suconghou/port . && \
docker build -t=suconghou/port:tcpfwd . -f Dockerfile-tcpfwd && \
docker build -t=suconghou/port:udpfwd . -f Dockerfile-udpfwd
