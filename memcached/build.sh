## this is no static build version
apk update && apk upgrade
apk --update add gcc g++ make wget libevent-dev
cd /tmp
MEMCACHE_VERSION=memcached-1.5.2
wget http://www.memcached.org/files/${MEMCACHE_VERSION}.tar.gz
tar xzf ${MEMCACHE_VERSION}.tar.gz
cd ${MEMCACHE_VERSION}
export CFLAGS="-O3"
./configure
make LDFLAGS=-static && make install
strip -s /usr/local/bin/memcached
cd /
tar czvf memcached.tar.gz /usr/local/bin/memcached /usr/lib/libevent-2.0.so.5  /usr/lib/libevent-2.0.so.5.1.9
