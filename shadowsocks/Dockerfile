FROM alpine as build 
RUN apk add --update binutils
RUN wget -O- https://github.com/shadowsocks/shadowsocks-rust/releases/download/v1.11.2/shadowsocks-v1.11.2.x86_64-unknown-linux-musl.tar.xz | tar Jx && \
strip -s sslocal ssserver
FROM alpine
LABEL maintainer="suconghou@gmail.com"
COPY --from=build sslocal ssserver /usr/local/bin/
ENTRYPOINT ["/usr/local/bin/ssserver"]

