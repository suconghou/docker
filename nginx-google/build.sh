apk update && apk upgrade
apk --update add gcc g++ make wget git openssl-dev pcre-dev zlib-dev
cd /tmp
NGINX_VERSION=nginx-1.11.3
CPU_NUM=`cat /proc/cpuinfo | grep processor | wc -l`
git clone https://github.com/cuber/ngx_http_google_filter_module
git clone https://github.com/yaoweibin/ngx_http_substitutions_filter_module
wget http://nginx.org/download/${NGINX_VERSION}.tar.gz
tar -zxf ${NGINX_VERSION}.tar.gz
cd ${NGINX_VERSION}
export CFLAGS="-O3"
./configure \
--with-http_ssl_module \
--sbin-path=/usr/local/sbin/nginx \
--prefix=/etc/nginx \
--conf-path=/etc/nginx/nginx.conf \
--http-log-path=/var/log/nginx/access.log \
--error-log-path=/var/log/nginx/error.log \
--pid-path=/var/run/nginx.pid \
--add-module=/tmp/ngx_http_google_filter_module \
--add-module=/tmp/ngx_http_substitutions_filter_module \
--without-http_access_module \
--without-http_auth_basic_module \
--without-http_autoindex_module \
--without-http_browser_module \
--without-http_charset_module \
--without-http_empty_gif_module \
--without-http_fastcgi_module \
--without-http_geo_module \
--without-http_map_module \
--without-http_memcached_module \
--without-http_referer_module \
--without-http_scgi_module \
--without-http_split_clients_module \
--without-http_ssi_module \
--without-http_upstream_ip_hash_module \
--without-http_upstream_keepalive_module \
--without-http_upstream_least_conn_module \
--without-http_userid_module \
--without-http_uwsgi_module \
--without-mail_imap_module \
--without-mail_pop3_module \
--without-mail_smtp_module \

make -j$CPU_NUM && make install
rm -rf /tmp/* /etc/nginx/*.default
strip -s /usr/local/sbin/nginx
cd /
tar czvf nginx.tar.gz /usr/local/sbin/nginx /etc/nginx /var/log/nginx /usr/lib/libpcre.so.1 /usr/lib/libpcre.so.1.2.6
