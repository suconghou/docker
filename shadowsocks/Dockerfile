FROM alpine as build 
RUN apk add --update binutils
RUN wget -O- https://github.com/shadowsocks/shadowsocks-rust/releases/download/v1.7.0/shadowsocks-v1.7.0-nightly.x86_64-unknown-linux-musl.tar.xz | tar Jx && \
strip -s ssdns sslocal ssserver ssurl
FROM alpine
LABEL maintainer="suconghou@gmail.com"
COPY --from=build ssdns sslocal ssserver ssurl /usr/local/bin/
ENTRYPOINT ["/usr/local/bin/ssserver"]

