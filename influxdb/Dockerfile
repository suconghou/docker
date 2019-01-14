FROM alpine AS build
RUN apk add --update binutils
RUN wget -O- https://dl.influxdata.com/influxdb/releases/influxdb-1.7.3-static_linux_amd64.tar.gz | tar xz --strip 2 && \
strip -s influxd influx

FROM alpine
LABEL maintainer="suconghou@gmail.com"
COPY --from=build /influxd /influx /usr/local/bin/
CMD ["influxd"]
