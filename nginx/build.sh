apk update && apk upgrade
apk --update add gcc g++ make wget file openssl-dev pcre-dev zlib-dev
cd /tmp
NGINX_VERSION=nginx-1.11.1
wget http://nginx.org/download/${NGINX_VERSION}.tar.gz
tar -zxvf ${NGINX_VERSION}.tar.gz
cd ${NGINX_VERSION}
export CFLAGS="-O3"
./configure --with-http_v2_module --with-http_ssl_module --sbin-path=/usr/local/sbin/nginx --prefix=/etc/nginx --conf-path=/etc/nginx/nginx.conf --http-log-path=/var/log/nginx/access.log --error-log-path=/var/log/nginx/error.log --pid-path=/var/run/nginx.pid
make && make install
rm /tmp/* /etc/nginx/*.default
strip -s /usr/local/sbin/nginx
cd /
tar czvf nginx.tar.gz /usr/local/sbin/nginx /etc/nginx /var/log/nginx /usr/lib/libpcre.so.1 /usr/lib/libpcre.so.1.2.6
