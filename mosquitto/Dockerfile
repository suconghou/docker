FROM alpine AS build
RUN apk add --update gcc g++ make openssl-dev openssl-libs-static
RUN wget -O- https://github.com/eclipse/mosquitto/archive/v.1.6.8.tar.gz | tar xz && \
    cd mosquitto-* && \
    make binary -j2 WITH_DOCS=no WITH_BUNDLED_DEPS=no && (make install || true) && \
    strip -s /usr/local/bin/* && strip -s /usr/local/sbin/*

FROM alpine
LABEL maintainer="suconghou@gmail.com"
RUN adduser -HDG nobody -h / -s /sbin/nologin -g mosquitto mosquitto
COPY --from=build /usr/local/sbin/mosquitto /usr/local/sbin/
COPY --from=build /usr/local/bin/mosquitto* /usr/local/bin/
COPY --from=build /usr/local/lib/libmosquitto.so.1 /usr/local/lib/libmosquitto.so.1
CMD [ "mosquitto" ]