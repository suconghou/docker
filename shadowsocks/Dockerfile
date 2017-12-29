FROM alpine as build 
RUN apk update && apk add binutils file
ADD https://github.com/shadowsocks/shadowsocks-go/releases/download/1.2.1/shadowsocks-server.tar.gz shadowsocks.tar.gz
RUN tar zxf shadowsocks.tar.gz --strip 1 
RUN ls -lha

