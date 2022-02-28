FROM alpine AS build
RUN apk add --update xz wget make file curl gcc g++ libev-dev zlib-dev zlib-static openssl-dev openssl-libs-static c-ares-dev
RUN curl -sSL https://github.com/nghttp2/nghttp2/releases/download/v1.38.0/nghttp2-1.38.0.tar.xz | tar xJ --strip 1 && ls -lha
RUN CFLAGS="-Os -ffunction-sections -fdata-sections" LDFLAGS="-static-libstdc++ -static-libgcc --static -Wl,-Bstatic,--gc-sections" ./configure --disable-python-bindings --disable-examples --disable-shared && \
make LDFLAGS="-static-libstdc++ -static-libgcc --static -Wl,-Bstatic,--gc-sections" && make install && strip -s /usr/local/bin/nghttpx

FROM alpine
LABEL maintainer="suconghou@gmail.com"
COPY --from=build /usr/local/bin/nghttpx /usr/local/bin/nghttpx
