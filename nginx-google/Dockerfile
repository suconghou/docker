FROM alpine AS build
RUN apk update && apk upgrade && apk add gcc g++ make wget git file openssl-dev pcre-dev zlib-dev
RUN git clone https://github.com/cuber/ngx_http_google_filter_module
RUN git clone https://github.com/yaoweibin/ngx_http_substitutions_filter_module
RUN NGINX_VERSION=nginx-1.13.10 && wget http://nginx.org/download/${NGINX_VERSION}.tar.gz && tar zxf ${NGINX_VERSION}.tar.gz && cd ${NGINX_VERSION} && ls -lha && \
./configure --with-http_v2_module --with-http_ssl_module --with-stream --with-stream_ssl_preread_module --sbin-path=/usr/local/sbin/nginx --prefix=/etc/nginx --conf-path=/etc/nginx/nginx.conf --http-log-path=/var/log/nginx/access.log --error-log-path=/var/log/nginx/error.log --pid-path=/var/run/nginx.pid --lock-path=/var/run/nginx.lock \
--without-select_module \ 
--without-poll_module \
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
--without-http_limit_req_module \
--without-http_upstream_ip_hash_module \
--without-http_upstream_keepalive_module \
--without-http_upstream_least_conn_module \
--without-http_userid_module \
--without-http_uwsgi_module \
--without-mail_imap_module \
--without-mail_pop3_module \
--without-mail_smtp_module \
--add-module=/ngx_http_google_filter_module \
--add-module=/ngx_http_substitutions_filter_module \
&& \
sed -i "s/-lpcre -lssl -lcrypto -lz/-static -lpcre -lssl -lcrypto -lz/g" objs/Makefile && make -j2 CFLAGS=-Os LDFLAGS=-static && make install && \
strip -s /usr/local/sbin/nginx &&  rm -rf /etc/nginx/*.default

FROM alpine
LABEL maintainer="suconghou@gmail.com"
COPY --from=build /usr/local/sbin/nginx /usr/local/sbin/nginx
COPY --from=build /etc/nginx /etc/nginx
COPY --from=build /var/log/nginx /var/log/nginx
RUN ln -sf /dev/stdout /var/log/nginx/access.log && ln -sf /dev/stderr /var/log/nginx/error.log
WORKDIR /etc/nginx
EXPOSE 80 443
