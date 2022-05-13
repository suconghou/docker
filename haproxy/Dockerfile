FROM alpine AS build
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories
RUN apk add --update gcc g++ make wget linux-headers pcre-dev zlib-dev zlib-static openssl-dev openssl-libs-static libexecinfo-dev
RUN HAPROXY_VERSION=haproxy-2.5.6 && wget --no-check-certificate https://www.haproxy.org/download/2.5/src/${HAPROXY_VERSION}.tar.gz && tar zxf ${HAPROXY_VERSION}.tar.gz && cd ${HAPROXY_VERSION} && ls -lha
RUN cd haproxy-* && rm /usr/lib/libc.so && make TARGET=linux-musl ARCH=X86_64 USE_OPENSSL=1 USE_STATIC_PCRE=1 USE_PCRE_JIT=1 USE_ZLIB=1 LDFLAGS="-s -static" -j4 && make install && strip -s /usr/local/sbin/haproxy

FROM alpine
LABEL maintainer="suconghou@gmail.com"
COPY --from=build /usr/local/sbin/haproxy /usr/local/sbin/haproxy
