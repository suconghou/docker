apk update && apk upgrade
apk --update add gcc g++ make wget linux-headers
cd /tmp
REDIS_VERSION=redis-3.2.1
CPU_NUM=`cat /proc/cpuinfo | grep processor | wc -l`
wget http://download.redis.io/releases/${REDIS_VERSION}.tar.gz
tar xzf ${REDIS_VERSION}.tar.gz
cd ${REDIS_VERSION}
make -j$CPU_NUM && make install
strip -s /usr/local/bin/*
cd /
tar czvf redis.tar.gz /usr/local/bin
