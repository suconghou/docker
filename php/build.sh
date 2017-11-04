apk update && apk upgrade
apk --update add xz gcc g++ make wget file openssl openssl-dev pcre-dev zlib-dev libxml2-dev curl curl-dev libssh libssh-dev libssh2 libssh2-dev jpeg-dev libpng-dev libwebp-dev libwebp-tools libxpm-dev tiff-dev libjpeg freetype-dev libmcrypt-dev bzip2-dev libxslt-dev
cd /tmp
wget ftp://xmlsoft.org/libxml2/libxml2-2.9.4.tar.gz
tar zxvf libxml2-2.9.4.tar.gz
cd libxml2-2.9.4
./configure
make && make install
cd /tmp
PHP_VERSION=php-7.1.4
wget http://php.net/distributions/${PHP_VERSION}.tar.xz
tar xJf ${PHP_VERSION}.tar.xz
cd ${PHP_VERSION}
export CFLAGS="-Os"
./configure --enable-inline-optimization --enable-static=yes --enable-shared=no --prefix=/usr/local --with-config-file-path=/etc --without-pear --disable-cgi --disable-opcache --disable-fpm --disable-phpdbg --enable-posix --enable-pcntl --enable-sockets --enable-ftp --enable-bcmath  --enable-zip --enable-mbstring  --enable-gd-native-ttf --with-gd --with-freetype-dir=/usr/local/ --with-png-dir=/usr/include --with-jpeg-dir=/usr/include --with-webp-dir=/usr/include --with-xpm-dir=/usr/include --with-mysqli --with-pdo-mysql --with-openssl  --enable-exif --enable-calendar --with-bz2 LDFLAGS=-static
sed -i "s{-export-dynamic{-all-static{" Makefile
make -j4 && make install && strip -s /usr/local/bin/php
mv /tmp/${PHP_VERSION}/php.ini-production /etc/php.ini
sed -i '/^expose_php.*/cexpose_php = Off' /etc/php.ini


--with-curl=/usr/local/
--with-mcrypt=/usr/local/mcrypt
--with-xsl

GD

https://github.com/webmproject/libwebp
http://download.savannah.gnu.org/releases/freetype/freetype-2.7.tar.gz


http://share.suconghou.cn/src/mcrypt-2.6.8.tar.gz

http://share.suconghou.cn/src/libmcrypt-2.5.8.tar.gz



./configure --prefix=/usr/local/libmcrypt/ --disable-posix-threads




export LD_LIBRARY_PATH=/usr/local/libmcrypt/:/usr/local/lib:/usr/lib
export LDFLAGS="-L/usr/local/lib -I/usr/local/include/"
export CFLAGS="-I/usr/local/include/"
./configure --prefix=/usr/local/mcrypt/ --with-libmcrypt-prefix=/usr/local/libmcrypt


