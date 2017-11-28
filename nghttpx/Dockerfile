FROM alpine AS build
RUN apk update && apk upgrade && apk add xz wget make file gcc g++ libev-dev zlib-dev openssl-dev c-ares-dev
RUN wget --no-check-certificate -O nghttp2.tar.xz https://github.com/nghttp2/nghttp2/releases/download/v1.28.0/nghttp2-1.28.0.tar.xz && tar Jxf nghttp2.tar.xz && cd nghttp2-1.28.0 && ls -lha && \
CFLAGS="-Os -ffunction-sections -fdata-sections" LDFLAGS="-static-libstdc++ -static-libgcc --static -Wl,-Bstatic,--gc-sections" ./configure --disable-python-bindings --disable-examples --disable-shared && \
make LDFLAGS="-static-libstdc++ -static-libgcc --static -Wl,-Bstatic" -j4 && make install && strip -s /usr/local/bin/nghttpx

FROM alpine
LABEL maintainer="suconghou@gmail.com"
COPY --from=build /usr/local/bin/nghttpx /usr/local/bin/nghttpx
