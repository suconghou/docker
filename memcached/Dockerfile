FROM alpine AS build
RUN apk add --update gcc g++ make wget file python2
RUN wget --no-check-certificate -O- https://github.com/libevent/libevent/releases/download/release-2.1.11-stable/libevent-2.1.11-stable.tar.gz | tar zx && cd libevent-2.1.11-stable && ./configure && make -j2 && make install && \
    MEMCACHE_VERSION=memcached-1.6.23 && wget https://www.memcached.org/files/${MEMCACHE_VERSION}.tar.gz && tar xzf ${MEMCACHE_VERSION}.tar.gz && cd ${MEMCACHE_VERSION} && ls -lha && \
    CFLAGS="-O3" && ./configure --disable-docs --disable-extstore && make LDFLAGS=-static -j2 && make install && strip -s /usr/local/bin/memcached

FROM alpine
LABEL maintainer="suconghou@gmail.com"
COPY --from=build /usr/local/bin/memcached /usr/local/bin/memcached
EXPOSE 11211

