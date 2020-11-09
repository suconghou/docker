FROM alpine AS build
RUN apk add --update gcc g++ make
RUN wget -O- https://github.com/civetweb/civetweb/archive/v1.13.tar.gz | tar xz && \
    cd civetweb-* && make -j4 COPT="-Os -ffunction-sections -fdata-sections" LDFLAGS="-static" WITH_LUA=1 WITH_WEBSOCKET=1 WITH_SERVER_STATS=1 WITH_DUKTAPE_VERSION=108 WITH_IPV6=1 && \
    strip -s civetweb && mv civetweb /

FROM alpine
LABEL maintainer="suconghou@gmail.com"
COPY --from=build /civetweb /usr/local/bin/
EXPOSE 8080
CMD [ "civetweb" ]

