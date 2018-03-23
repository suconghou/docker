FROM alpine AS build
RUN apk update && apk upgrade && apk add gcc g++ make perl
RUN SQUID_VERSION=squid-3.5.27 && wget http://www.squid-cache.org/Versions/v3/3.5/${SQUID_VERSION}.tar.xz && tar xJf ${SQUID_VERSION}.tar.xz && cd ${SQUID_VERSION} && ls -lha && \
export CFLAGS=-Os && export LDFLAGS="-static-libstdc++ -static-libgcc --static -Wl,-Bstatic" && ./configure && make -j4 && make install 
RUN ls /usr/local/
