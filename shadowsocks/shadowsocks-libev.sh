apk update && apk upgrade
apk --update add gcc g++ make curl zlib-dev pcre-dev openssl-dev linux-headers asciidoc xmlto
cd /tmp
SHADOWSOCKS_LIBEV_VERSION=2.5.6
CPU_NUM=`cat /proc/cpuinfo | grep processor | wc -l`
curl -sSL https://github.com/shadowsocks/shadowsocks-libev/archive/v${SHADOWSOCKS_LIBEV_VERSION}.tar.gz |  tar xz
cd shadowsocks-libev-${SHADOWSOCKS_LIBEV_VERSION}
export CFLAGS="-Os"
./configure
sed -i "s/LDFLAGS = /LDFLAGS = -all-static/g" ./src/Makefile
make -j$CPU_NUM && make install
strip -s /usr/local/bin/ss-server && mv /usr/local/bin/ss-server /
cd /
tar czvf shadowsocks-libev.tar.gz ss-server
