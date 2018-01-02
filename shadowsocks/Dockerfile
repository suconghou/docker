FROM alpine as build 
RUN apk update && apk add binutils file
ADD https://github.com/shadowsocks/shadowsocks-go/releases/download/1.2.1/shadowsocks-server.tar.gz shadowsocks.tar.gz
RUN tar zxf shadowsocks.tar.gz && strip -s shadowsocks-server && /shadowsocks-server -version
FROM scratch
LABEL maintainer="suconghou@gmail.com"
COPY --from=build /shadowsocks-server /
ENTRYPOINT ["/shadowsocks-server"]
EXPOSE 443

