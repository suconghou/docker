FROM alpine AS build
RUN apk update && apk upgrade && apk add gcc g++ make wget file xz autoconf pcre-dev zlib-dev jpeg-dev libpng-dev bzip2-dev openssl-dev
RUN LIBXML2_VERSION=libxml2-2.9.8 && wget ftp://xmlsoft.org/libxml2/${LIBXML2_VERSION}.tar.gz && tar zxf ${LIBXML2_VERSION}.tar.gz && cd ${LIBXML2_VERSION} && ./configure && make -j2 && make install
RUN LIBXSLT_VERSION=libxslt-1.1.32 && wget ftp://xmlsoft.org/libxslt/${LIBXSLT_VERSION}.tar.gz && tar zxf ${LIBXSLT_VERSION}.tar.gz && cd ${LIBXSLT_VERSION} && ./configure && make -j2 && make install
RUN CURL_VERSION=curl-7.62.0 && wget --no-check-certificate https://curl.haxx.se/download/${CURL_VERSION}.tar.xz && tar Jxf ${CURL_VERSION}.tar.xz && cd ${CURL_VERSION} && ./configure && make -j2 && make install
RUN LIBFREETYPE_VERSION=freetype-2.9.1 && wget --no-check-certificate https://download.savannah.gnu.org/releases/freetype/${LIBFREETYPE_VERSION}.tar.gz && tar zxf ${LIBFREETYPE_VERSION}.tar.gz && cd ${LIBFREETYPE_VERSION} && ./configure && make && make install && ln -s $(pwd)/builds/unix/freetype-config /usr/local/bin/freetype-config
RUN PHP_VERSION=php-7.2.12 && wget http://php.net/distributions/${PHP_VERSION}.tar.xz && tar xJf ${PHP_VERSION}.tar.xz && cd ${PHP_VERSION} && \
export CFLAGS="-Os" && LDFLAGS="-static" LIBS="$(curl-config --static-libs)" && ./configure --enable-inline-optimization --enable-static=yes --enable-shared=no --prefix=/usr/local --with-config-file-path=/etc --without-pear --disable-cgi --disable-opcache --enable-fpm --disable-phpdbg --enable-pcntl --enable-sockets --enable-ftp --enable-bcmath --enable-zip --with-zlib --enable-mbstring --with-gd --with-freetype-dir=/usr/local/include/freetype2/freetype --with-jpeg-dir --with-mysqli --with-pdo-mysql --with-openssl --enable-exif --enable-calendar --with-bz2 --enable-sysvsem --enable-sysvshm --enable-sysvmsg --enable-shmop --with-xsl --with-curl=/usr/local/ && \
sed -i "s{-export-dynamic{-all-static{" Makefile && make -j4 && make install
RUN cd php-7.*.* && mv /usr/local/etc/php-fpm.conf.default /usr/local/etc/php-fpm.conf && mv /usr/local/etc/php-fpm.d/www.conf.default /usr/local/etc/php-fpm.d/www.conf && mkdir -p /var/log/php-fpm && \
sed -i '/^;error_log.*/cerror_log = \/var\/log\/php-fpm\/php-fpm.log' /usr/local/etc/php-fpm.conf && \
sed -i '/^;pid.*/cpid = \/var\/run\/php-fpm.pid' /usr/local/etc/php-fpm.conf && \
sed -i '/^;slowlog.*/cslowlog = \/var\/log\/php-fpm\/$pool.log.slow' /usr/local/etc/php-fpm.d/www.conf && \
sed -i '/^;request_slowlog_timeout.*/crequest_slowlog_timeout = 5' /usr/local/etc/php-fpm.d/www.conf && \
php-fpm -t && strip -s /usr/local/sbin/php-fpm && strip -s /usr/local/bin/php && mv php.ini-development /etc/ && mv php.ini-production /etc/php.ini && \
sed -i '/^expose_php.*/cexpose_php = Off' /etc/php.ini

FROM alpine
LABEL maintainer="suconghou@gmail.com"
COPY --from=build /usr/local/sbin/php-fpm /usr/local/sbin/php-fpm
COPY --from=build /usr/local/bin/php /usr/local/bin/php
COPY --from=build /usr/local/etc/php-fpm.conf /usr/local/etc/php-fpm.conf
COPY --from=build /usr/local/etc/php-fpm.d/ /usr/local/etc/php-fpm.d/
COPY --from=build /etc/php.ini /etc/php.ini
COPY --from=build /etc/php.ini-development /etc/php.ini-development
COPY --from=build /var/log/php-fpm /var/log/php-fpm
EXPOSE 9000
