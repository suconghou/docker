FROM alpine AS build
RUN apk update && apk upgrade && apk add gcc g++ make curl
RUN curl -sSL https://github.com/rssnsj/portfwd/archive/master.tar.gz | tar xz --strip 1 && cd src && ls -lha && \
make CFLAGS="-Os" LDFLAGS="-static" && strip -s tcpfwd && strip -s udpfwd && mv tcpfwd udpfwd /usr/local/bin/

FROM busybox
LABEL maintainer="suconghou@gmail.com"
COPY --from=build /usr/local/bin/tcpfwd /usr/local/bin/tcpfwd
COPY --from=build /usr/local/bin/udpfwd /usr/local/bin/udpfwd
