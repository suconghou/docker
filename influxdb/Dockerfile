FROM quay.io/influxdb/influxdb:nightly-alpine AS build

FROM alpine
LABEL maintainer="suconghou@gmail.com"
COPY --from=build /usr/bin/influxd /usr/local/bin/influxd
CMD ["influxd"]
