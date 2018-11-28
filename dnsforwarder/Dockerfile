FROM alpine AS build
RUN apk add --update gcc g++ make
RUN wget -O- https://github.com/holmium/dnsforwarder/archive/6.1.15.tar.gz | tar xz && \
cd dnsforwarder-* && \
./configure --enable-downloader=wget && \
make -j2 CFLAGS=-Os LDFLAGS=-static && make install && \
strip -s /usr/local/bin/dnsforwarder 

FROM alpine
LABEL maintainer="suconghou@gmail.com"
COPY --from=build /usr/local/bin/dnsforwarder /usr/local/bin/dnsforwarder
