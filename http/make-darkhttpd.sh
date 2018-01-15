#!/bin/bash
docker build --add-host unix4lyfe.org:192.243.115.210 -t=suconghou/http:darkhttpd -f darkhttpd .
