FROM alpine AS build
RUN apk update && apk upgrade && apk add wget gcc g++ make file
RUN wget -O- https://github.com/maxmind/geoip-api-c/releases/download/v1.6.12/GeoIP-1.6.12.tar.gz | tar xz && \
cd GeoIP-1.6.12 && ./configure && make && make install
RUN wget -O- http://ftp.gnu.org/gnu/ncurses/ncurses-6.1.tar.gz | tar xz && \
cd ncurses-6.1 && ./configure --enable-widec && make && make install
RUN GOACCESS_VERSION=goaccess-1.2 && wget -O- http://tar.goaccess.io/${GOACCESS_VERSION}.tar.gz | tar xz && \
cd $GOACCESS_VERSION && CFLAGS="-Os -ffunction-sections -fdata-sections" LDFLAGS="-static-libstdc++ -static-libgcc --static -Wl,-Bstatic,--gc-sections" ./configure --enable-utf8 --enable-geoip=legacy && \
make && make install && strip -s /usr/local/bin/goaccess

FROM alpine
LABEL maintainer="suconghou@gmail.com"
COPY --from=build /usr/local/bin/goaccess /usr/local/bin/

