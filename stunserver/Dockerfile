FROM alpine AS build
RUN apk --update add gcc g++ make openssl-dev openssl-libs-static boost-dev boost-static
RUN wget -O- http://www.stunprotocol.org/stunserver-1.2.16.tgz | tar xz --strip 1 && \
make CFLAGS="-Os -ffunction-sections -fdata-sections" LDFLAGS="-Wl,--gc-sections -static" && \
strip -s stunclient stunserver stuntestcode 


FROM busybox
LABEL maintainer="suconghou@gmail.com"
COPY --from=build /stunclient /stunserver /stuntestcode /usr/local/bin/
