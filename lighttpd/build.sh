apk update && apk upgrade
apk --update add gcc g++ make wget pcre-dev zlib-dev bzip2-dev
cd /tmp
LIGHTTPD_VERSION=lighttpd-1.4.41
CPU_NUM=`cat /proc/cpuinfo | grep processor | wc -l`
wget http://download.lighttpd.net/lighttpd/releases-1.4.x/${LIGHTTPD_VERSION}.tar.xz
tar xJf ${LIGHTTPD_VERSION}.tar.xz
cd ${LIGHTTPD_VERSION}
export CFLAGS="-O3"
./configure
make -j$CPU_NUM && make install
strip -s /usr/local/sbin/lighttpd
strip -s /usr/local/sbin/lighttpd-angel
strip -s /usr/local/lib/mod_*.so
cd /
tar czvf lighttpd.tar.gz /usr/local/sbin/lighttpd /usr/local/sbin/lighttpd-angel /usr/local/lib/mod_*.so  /usr/lib/libpcre.so.1 /usr/lib/libpcre.so.1.2.6




