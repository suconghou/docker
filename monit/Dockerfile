FROM alpine AS build
RUN apk update && apk upgrade && apk add wget make file gcc g++ zlib-dev libressl-dev
RUN MONIT_VERSION=monit-5.26.0 && wget --no-check-certificate https://mmonit.com/monit/dist/${MONIT_VERSION}.tar.gz && tar zxf ${MONIT_VERSION}.tar.gz && cd ${MONIT_VERSION} && ls -lha && \
    export CFLAGS="-ffunction-sections -fdata-sections -Os" && \
    LIBS="-static-libstdc++ -static-libgcc --static -Wl,-Bstatic,--gc-sections -L/usr/lib/ /usr/lib/libssl.a /usr/lib/libcrypto.a" ./configure --enable-optimized --without-pam --enable-shared=no --enable-static=no --with-ssl-lib-dir=/usr/lib  && \
    sed -i "s{-O3{-Os{" Makefile && make -j4 && make install && strip -s /usr/local/bin/monit

FROM alpine
LABEL maintainer="suconghou@gmail.com"
COPY --from=build /usr/local/bin/monit /usr/local/bin/monit
