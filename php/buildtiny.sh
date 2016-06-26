apk update && apk upgrade
apk --update add gcc g++ make wget file openssl-dev pcre-dev zlib-dev libxml2-dev curl-dev jpeg-dev  libpng-dev freetype-dev libmcrypt-dev bzip2-dev libxslt-dev
cd /tmp
PHP_VERSION=php-7.0.8
CPU_NUM=`cat /proc/cpuinfo | grep processor | wc -l`
wget http://php.net/distributions/${PHP_VERSION}.tar.xz
tar -xJf ${PHP_VERSION}.tar.xz
cd ${PHP_VERSION}
export CFLAGS="-O3"
./configure --enable-inline-optimization --enable-static=yes --enable-shared=no --prefix=/usr/local --with-config-file-path=/etc --without-pear --disable-all
make -j$CPU_NUM && make install
mv /tmp/${PHP_VERSION}/php.ini-development /etc/php.ini
sed -i '/^expose_php.*/cexpose_php = Off' /etc/php.ini
strip -s /usr/local/bin/php
cd /
tar czvf php.tar.gz /usr/local/bin/php  /etc/php.ini
