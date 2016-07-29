apk update && apk upgrade
apk --update add gcc g++ make wget git openssl-dev linux-headers libnfnetlink-dev libnl-dev
cd /tmp
KEEPALIVED_VERSION=keepalived-1.2.23
CPU_NUM=`cat /proc/cpuinfo | grep processor | wc -l`
wget http://www.keepalived.org/software/${KEEPALIVED_VERSION}.tar.gz
tar zxf ${KEEPALIVED_VERSION}.tar.gz
cd ${KEEPALIVED_VERSION}
export CFLAGS="-O3"
./configure
make -j$CPU_NUM && make install
strip -s /usr/local/sbin/keepalived
strip -s /usr/local/bin/genhash
cd /
tar czvf keepalived.tar.gz /usr/local/sbin/keepalived /usr/local/bin/genhash  /usr/lib/libnl.so.1 /usr/lib/libnl.so.1.1.4

