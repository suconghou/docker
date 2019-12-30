FROM alpine AS build
RUN apk update && apk upgrade && apk add gcc g++ make autoconf pcre-dev zlib-dev zlib-static
RUN wget -O- https://www.privoxy.org/sf-download-mirror/Sources/3.0.28%20%28stable%29/privoxy-3.0.28-stable-src.tar.gz | tar xz --strip 1 && \
CFLAGS="-Os -ffunction-sections -fdata-sections" LDFLAGS="-Wl,--gc-sections -static" autoheader && autoconf && ./configure && \
make CFLAGS="-Os -ffunction-sections -fdata-sections" LDFLAGS="-Wl,--gc-sections -static" && \
strip -s privoxy

FROM busybox
LABEL maintainer="suconghou@gmail.com"
COPY --from=build /privoxy /usr/local/bin/privoxy
