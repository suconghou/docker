FROM alpine AS build
RUN apk add --update binutils
RUN wget -O- https://dl.influxdata.com/influxdb/releases/influxdb-1.7.6-static_linux_amd64.tar.gz | tar xz --strip 2 && \
strip -s influxd influx && \
/influxd config > /influxdb.conf && \
sed -i 's/auth-enabled.*/auth-enabled = true/g' /influxdb.conf && \
sed -i 's/reporting-disabled.*/reporting-disabled = true/g' /influxdb.conf && \
sed -i 's/wal-fsync-delay.*/wal-fsync-delay = "2000ms"/g' /influxdb.conf && \
sed -i 's/index-version.*/index-version = "tsi1"/g' /influxdb.conf && \
sed -i 's/cache-max-memory-size.*/cache-max-memory-size = 104857600/g' /influxdb.conf

FROM alpine
LABEL maintainer="suconghou@gmail.com"
COPY --from=build /influxdb.conf /etc/
COPY --from=build /influxd /influx /usr/local/bin/
CMD ["influxd","run","-config","/etc/influxdb.conf"]
