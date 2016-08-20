apk update && apk upgrade
apk --update add gcc g++ make wget file openssl-dev pcre-dev zlib-dev libxml2-dev curl-dev jpeg-dev  libpng-dev freetype-dev libmcrypt-dev bzip2-dev libxslt-dev autoconf libmemcached-dev
cd /tmp
PHP_VERSION=php-7.0.10
CPU_NUM=`cat /proc/cpuinfo | grep processor | wc -l`
wget http://php.net/distributions/${PHP_VERSION}.tar.xz
wget -O php-redis.zip https://github.com/phpredis/phpredis/archive/php7.zip
wget -O php-memcached.zip https://github.com/php-memcached-dev/php-memcached/archive/php7.zip
tar xJf ${PHP_VERSION}.tar.xz
unzip php-redis.zip -d ${PHP_VERSION}/ext
unzip php-memcached.zip -d ${PHP_VERSION}/ext
cd ${PHP_VERSION}
export CFLAGS="-O3"
rm -rf configure
./buildconf --force
./configure --enable-inline-optimization --enable-static=yes --prefix=/usr/local --with-config-file-path=/etc --without-pear --disable-cgi --enable-redis --enable-memcached --disable-memcached-sasl --enable-opcache --enable-fpm  --enable-posix --enable-pcntl --enable-sockets --enable-ftp --enable-bcmath  --enable-zip --enable-mbstring --enable-gd-native-ttf --with-iconv --with-mysqli --with-pdo-mysql --with-curl --with-gd --with-freetype-dir=/usr/include/freetype2 --with-png-dir=/usr/include --with-jpeg-dir=/usr/include --with-openssl --with-mcrypt --enable-exif --enable-calendar  --with-xsl --with-bz2
make -j$CPU_NUM && make install
mv /tmp/${PHP_VERSION}/php.ini-production /etc/php.ini
mv /usr/local/etc/php-fpm.conf.default  /usr/local/etc/php-fpm.conf
mv /usr/local/etc/php-fpm.d/www.conf.default /usr/local/etc/php-fpm.d/www.conf
strip -s /usr/local/sbin/php-fpm
strip -s /usr/local/lib/php/extensions/no-debug-non-zts-20151012/*
mkdir -p /var/log/php-fpm
sed -i '/^expose_php.*/cexpose_php = Off' /etc/php.ini
sed -i '/^;opcache.enable=.*/copcache.enable=1' /etc/php.ini
sed -i '/^;opcache.enable_cli=.*/copcache.enable_cli=1' /etc/php.ini
echo 'zend_extension=opcache.so' >> /etc/php.ini
sed -i '/^;error_log.*/cerror_log = \/var\/log\/php-fpm\/php-fpm.log' /usr/local/etc/php-fpm.conf
sed -i '/^;pid.*/cpid = \/var\/run\/php-fpm.pid' /usr/local/etc/php-fpm.conf
sed -i '/^;slowlog.*/cslowlog = \/var\/log\/php-fpm\/$pool.log.slow' /usr/local/etc/php-fpm.d/www.conf
sed -i '/^;request_slowlog_timeout.*/crequest_slowlog_timeout = 5' /usr/local/etc/php-fpm.d/www.conf
cd /
tar czvf php.tar.gz /usr/local/sbin/php-fpm /etc/php.ini /usr/local/etc/ /var/log/php-fpm/ /usr/local/lib/php/extensions/no-debug-non-zts-20151012/opcache.so /usr/lib/libexslt.so.0 /usr/lib/libexslt.so.0.8.17 /usr/lib/libmcrypt.so.4 /usr/lib/libmcrypt.so.4.4.8 /usr/lib/libpng16.so.16 /usr/lib/libpng16.so.16.21.0 /usr/lib/libjpeg.so.8 /usr/lib/libjpeg.so.8.0.2 /usr/lib/libcurl.so.4 /usr/lib/libcurl.so.4.4.0 /usr/lib/libbz2.so.1 /usr/lib/libbz2.so.1.0.6 /usr/lib/libxml2.so.2 /usr/lib/libxml2.so.2.9.4 /usr/lib/libfreetype.so.6 /usr/lib/libfreetype.so.6.12.3 /usr/lib/libxslt.so.1 /usr/lib/libxslt.so.1.1.29 /usr/lib/libgcrypt.so.20 /usr/lib/libgcrypt.so.20.1.0  /usr/lib/libgpg-error.so.0 /usr/lib/libgpg-error.so.0.18.0  /usr/lib/libssh2.so.1 /usr/lib/libssh2.so.1.0.1 /usr/lib/libmemcached.so.11 /usr/lib/libmemcached.so.11.0.0 /usr/lib/libmemcachedutil.so.2 /usr/lib/libmemcachedutil.so.2.0.0 /usr/lib/libstdc++.so.6 /usr/lib/libstdc++.so.6.0.21 /usr/lib/libgcc_s.so.1
