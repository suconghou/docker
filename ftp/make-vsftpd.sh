#!/bin/bash
docker build -t=suconghou/ftp:vsftpd -t=suconghou/ftp:vsftpd-3.0.3 . -f Dockerfile-vsftpd
