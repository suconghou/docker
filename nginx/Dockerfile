FROM alpine AS build
RUN apk --update add gcc g++ make wget file openssl-dev openssl-libs-static pcre-dev zlib-dev zlib-static linux-headers
RUN NGINX_VERSION=nginx-1.25.3 && wget http://nginx.org/download/${NGINX_VERSION}.tar.gz && tar zxf ${NGINX_VERSION}.tar.gz && cd ${NGINX_VERSION} && \
    ./configure --with-pcre --with-pcre-jit --with-http_v2_module --with-http_ssl_module --with-file-aio --sbin-path=/usr/local/sbin/nginx --prefix=/etc/nginx --conf-path=/etc/nginx/nginx.conf --http-log-path=/var/log/nginx/access.log --error-log-path=/var/log/nginx/error.log --pid-path=/var/run/nginx.pid --lock-path=/var/run/nginx.lock && \
    sed -i "s/-lpcre -lssl -lcrypto -lz/-static -lpcre -lssl -lcrypto -lz/g" objs/Makefile && make -j2 CFLAGS=-O3 LDFLAGS=-static && make install && \
    strip -s /usr/local/sbin/nginx &&  rm -rf /etc/nginx/*.default

FROM alpine
LABEL maintainer="suconghou@gmail.com"
COPY --from=build /usr/local/sbin/nginx /usr/local/sbin/nginx
COPY --from=build /etc/nginx /etc/nginx
COPY --from=build /var/log/nginx /var/log/nginx
RUN ln -sf /dev/stdout /var/log/nginx/access.log && ln -sf /dev/stderr /var/log/nginx/error.log
WORKDIR /etc/nginx
EXPOSE 80 443
