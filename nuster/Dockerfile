FROM alpine AS build
RUN apk add --update gcc g++ make curl linux-headers pcre-dev zlib-dev zlib-static openssl-dev openssl-libs-static
RUN NUSTER_VERION=5.3.0.23 && curl -sSL https://github.com/jiangwenyuan/nuster/releases/download/v${NUSTER_VERION}/nuster-${NUSTER_VERION}.tar.gz | tar xz --strip 1 && ls -lha && \
    make TARGET=linux-glibc ARCH=X86_64 USE_OPENSSL=1 USE_STATIC_PCRE=1 USE_PCRE_JIT=1 USE_ZLIB=1 LDFLAGS="-s -static" ADDLIB="/usr/lib/libc.a -lz" CFLAGS="-O3" -j2 && make install && strip -s /usr/local/sbin/haproxy

FROM alpine
LABEL maintainer="suconghou@gmail.com"
COPY --from=build /usr/local/sbin/haproxy /usr/local/sbin/haproxy
