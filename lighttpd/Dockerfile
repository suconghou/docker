FROM alpine AS build
RUN apk update && apk upgrade && apk add gcc g++ make wget file scons python pcre-dev zlib-dev bzip2-dev
RUN LIGHTTPD_VERSION=lighttpd-1.4.54 && wget http://download.lighttpd.net/lighttpd/releases-1.4.x/${LIGHTTPD_VERSION}.tar.xz && tar xJf ${LIGHTTPD_VERSION}.tar.xz && cd ${LIGHTTPD_VERSION} && ls -lha && \
export CFLAGS=-Os && export LDFLAGS="-static-libstdc++ -static-libgcc --static -Wl,-Bstatic" && scons -j 4 build_static=1 build_dynamic=0 install && strip -s /usr/local/sbin/lighttpd

FROM alpine
LABEL maintainer="suconghou@gmail.com"
COPY --from=build /usr/local/sbin/lighttpd /usr/local/sbin/lighttpd
EXPOSE 80
