FROM alpine AS build
RUN apk add --update binutils
RUN wget -O- https://dl.influxdata.com/influxdb/releases/influxdb-1.8.0-static_linux_amd64.tar.gz | tar xz --strip 2 && \
strip -s influxd influx && \
/influxd config > /influxdb.conf && \
sed -i 's/auth-enabled.*/auth-enabled = true/g' /influxdb.conf && \
sed -i 's/reporting-disabled.*/reporting-disabled = true/g' /influxdb.conf && \
sed -i 's/wal-fsync-delay.*/wal-fsync-delay = "200ms"/g' /influxdb.conf && \
sed -i 's/index-version.*/index-version = "tsi1"/g' /influxdb.conf && \
sed -i 's/cache-max-memory-size.*/cache-max-memory-size = 268435456/g' /influxdb.conf && \
sed -i 's/\/root\/.influxdb\//\/influxdb\//g' /influxdb.conf && \
sed -i 's/bind-address = ":8086"/bind-address = ":1086"/g' /influxdb.conf && \
sed -i 'N;s/udp]].*enabled = false/udp]]\n  enabled = true/g' /influxdb.conf


FROM alpine
LABEL maintainer="suconghou@gmail.com"
COPY --from=build /influxdb.conf /etc/
COPY --from=build /influxd /influx /usr/local/bin/
VOLUME [ "/influxdb" ]
CMD ["influxd","run","-config","/etc/influxdb.conf"]
