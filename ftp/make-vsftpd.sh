#!/bin/bash
docker build -t=suconghou/ftp:vsftpd -t=suconghou/ftp:vsftpd-3.03 . -f Dockerfile-vsftpd
