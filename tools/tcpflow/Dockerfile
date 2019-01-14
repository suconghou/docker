FROM alpine AS build
RUN apk add --update gcc g++ make libpcap-dev zlib-dev openssl-dev boost-dev
RUN wget -O- https://github.com/simsong/tcpflow/releases/download/tcpflow-1.5.0/tcpflow-1.5.0.tar.gz | tar xz --strip 1 
RUN CFLAGS="-Os -ffunction-sections -fdata-sections" LDFLAGS="-static-libstdc++ -static-libgcc --static -Wl,-Bstatic,--gc-sections" ./configure && \
make && strip -s src/tcpflow

FROM alpine
LABEL maintainer="suconghou@gmail.com"
COPY --from=build /src/tcpflow /usr/local/bin/
