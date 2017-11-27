FROM alpine AS build
RUN apk update && apk upgrade && apk add gcc g++ make wget linux-headers pcre-dev
RUN HAPROXY_VERSION=haproxy-1.8.0 && wget --no-check-certificate https://www.haproxy.org/download/1.8/src/${HAPROXY_VERSION}.tar.gz && tar zxf ${HAPROXY_VERSION}.tar.gz && cd ${HAPROXY_VERSION} && ls -lha && \
make TARGET=linux2628 ARCH=X86_64 USE_STATIC_PCRE=1 LDFLAGS="-static" CFLAGS="-O3" ADDLIB="/usr/lib/libc.a" -j2 && make install && strip -s /usr/local/sbin/haproxy

FROM alpine
LABEL maintainer="suconghou@gmail.com"
COPY --from=build /usr/local/sbin/haproxy /usr/local/sbin/haproxy
