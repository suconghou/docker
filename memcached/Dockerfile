FROM alpine AS build
RUN apk update && apk upgrade && apk add gcc g++ make wget file python
RUN wget --no-check-certificate https://github.com/libevent/libevent/releases/download/release-2.1.10-stable/libevent-2.1.10-stable.tar.gz && tar zxf libevent-2.1.10-stable.tar.gz && cd libevent-2.1.10-stable && ./configure && make -j2 && make install && \
MEMCACHE_VERSION=memcached-1.5.16 && wget https://www.memcached.org/files/${MEMCACHE_VERSION}.tar.gz && tar xzf ${MEMCACHE_VERSION}.tar.gz && cd ${MEMCACHE_VERSION} && ls -lha && \
CFLAGS="-O3" && ./configure --disable-docs && make LDFLAGS=-static -j2 && make install && strip -s /usr/local/bin/memcached

FROM alpine
LABEL maintainer="suconghou@gmail.com"
COPY --from=build /usr/local/bin/memcached /usr/local/bin/memcached
EXPOSE 11211

