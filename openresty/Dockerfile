FROM alpine AS build
RUN apk update && apk upgrade && apk add gcc g++ make wget perl pcre-dev openssl-dev openssl-libs-static zlib-dev zlib-static
RUN OPENRESTY_VERSION=openresty-1.19.3.2 && wget https://openresty.org/download/${OPENRESTY_VERSION}.tar.gz && tar xzf ${OPENRESTY_VERSION}.tar.gz && cd ${OPENRESTY_VERSION} && \
rm -f /lib/libcrypto.so* /lib/libssl.so* /usr/lib/libpcre.so*  && \
./configure --with-pcre --with-pcre-jit --with-http_v2_module --with-http_slice_module --with-http_stub_status_module --with-http_sub_module --with-http_addition_module --with-http_realip_module -j4 && \ 
make -j4 && make install && strip -s /usr/local/openresty/nginx/sbin/nginx /usr/lib/libgcc_s.so.1 /usr/local/openresty/luajit/lib/libluajit-5.1.so.2.1.0 && \
cd /usr/local/openresty/lualib && strip -s $(find . -name "*.so" | xargs)


FROM alpine
LABEL maintainer="suconghou@gmail.com"
COPY --from=build /usr/lib/libgcc_s.so.1 /usr/lib/libgcc_s.so.1
COPY --from=build /usr/local/openresty/luajit/lib/libluajit-5.1.so.2.1.0 /usr/local/openresty/luajit/lib/libluajit-5.1.so.2
COPY --from=build /usr/local/openresty/nginx/sbin/nginx /usr/local/sbin/nginx
COPY --from=build /usr/local/openresty/nginx/conf/nginx.conf usr/local/openresty/nginx/conf/fastcgi.conf /usr/local/openresty/nginx/conf/mime.types /usr/local/openresty/nginx/conf/scgi_params /usr/local/openresty/nginx/conf/
COPY --from=build /usr/local/openresty/nginx/logs/ /usr/local/openresty/nginx/logs/
COPY --from=build /usr/local/openresty/lualib /usr/local/openresty/lualib 
RUN ln -sf /dev/stdout /usr/local/openresty/nginx/logs/access.log && \
ln -sf /dev/stderr /usr/local/openresty/nginx/logs/error.log
