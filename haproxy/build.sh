apk update && apk upgrade
apk --update add gcc g++ make wget linux-headers
cd /tmp
HAPROXY_VERSION=haproxy-1.6.7
CPU_NUM=`cat /proc/cpuinfo | grep processor | wc -l`
wget http://www.haproxy.org/download/1.6/src/${HAPROXY_VERSION}.tar.gz
tar zxf ${HAPROXY_VERSION}.tar.gz
cd ${HAPROXY_VERSION}
export CFLAGS="-O3"
make TARGET=linux2628 ARCH=X86_64 -j$CPU_NUM && make install
strip -s /usr/local/sbin/haproxy
cd /
tar czvf haproxy.tar.gz /usr/local/sbin/haproxy
