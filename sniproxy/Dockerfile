FROM alpine AS build
RUN apk add libressl autoconf automake build-base gettext-dev libev-dev pcre-dev udns-dev bsd-compat-headers
RUN wget -O- http://www.corpit.ru/mjt/udns/udns-0.4.tar.gz | tar xz && \
    cd udns-0.4 && ./configure && make staticlib && mv libudns.a /usr/lib/
RUN wget -O- https://github.com/dlundquist/sniproxy/archive/0.6.0.tar.gz | tar xz --strip 1 && \
    export CFLAGS="-Os -ffunction-sections -fdata-sections" LDFLAGS="-Wl,--gc-sections -static" && ./autogen.sh && \
    ./configure && make -j2 && mv src/sniproxy / && cd / && \
    strip -s sniproxy && ./sniproxy -V

FROM busybox
LABEL maintainer="suconghou@gmail.com"
COPY --from=build /sniproxy /usr/local/bin/sniproxy
COPY sniproxy.conf /etc/
CMD [ "sniproxy","-c","/etc/sniproxy.conf","-f"]