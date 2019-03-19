FROM alpine AS build
RUN apk update && apk upgrade && apk add gcc g++ make curl linux-headers pcre-dev zlib-dev
RUN NUSTER_VERION=2.1.0.19 && curl -sSL https://github.com/jiangwenyuan/nuster/releases/download/v${NUSTER_VERION}/nuster-${NUSTER_VERION}.tar.gz | tar xz --strip 1 && ls -lha && \
make TARGET=linux2628 ARCH=X86_64 USE_STATIC_PCRE=1 USE_PCRE_JIT=1 USE_ZLIB=1 LDFLAGS="-static" CFLAGS="-O3" ADDLIB="/usr/lib/libc.a" -j2 && make install && strip -s /usr/local/sbin/haproxy

FROM alpine
LABEL maintainer="suconghou@gmail.com"
COPY --from=build /usr/local/sbin/haproxy /usr/local/sbin/haproxy
