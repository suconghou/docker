apk update && apk upgrade
apk --update add gcc g++ make curl  zlib-dev openssl-dev linux-headers asciidoc xmlto
cd /tmp
SHADOWSOCKS_LIBEV_VERSION=2.4.8
CPU_NUM=`cat /proc/cpuinfo | grep processor | wc -l`
curl -sSL https://github.com/shadowsocks/shadowsocks-libev/archive/v${SHADOWSOCKS_LIBEV_VERSION}.tar.gz |  tar xz
cd shadowsocks-libev-${SHADOWSOCKS_LIBEV_VERSION}
export CFLAGS="-O3"
./configure
make -j$CPU_NUM && make install
strip -s /usr/local/bin/ss-server
cd /
tar czvf shadowsocks-libev.tar.gz /usr/local/bin/ss-server
