FROM alpine AS build
RUN apk update && apk upgrade && apk add gcc g++ make curl automake autoconf
RUN curl -sSL https://github.com/larsbrinkhoff/httptunnel/archive/master.tar.gz | tar xz --strip 1 && ls -lha
RUN ./autogen.sh && CFLAGS="-Os -ffunction-sections -fdata-sections" LDFLAGS="-static-libstdc++ -static-libgcc --static -Wl,-Bstatic,--gc-sections" ./configure && \
make && strip -s hts htc

FROM alpine
LABEL maintainer="suconghou@gmail.com"
COPY --from=build /hts /htc /usr/local/bin/
