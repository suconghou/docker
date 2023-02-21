FROM centos:7
RUN yum install -y gcc make wget tar gcc-c++ flex bison openssl-devel postgresql-devel
RUN yum install -y https://download-ib01.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN yum install -y cmake3
RUN wget -O- https://github.com/fluent/fluent-bit/archive/refs/tags/v2.0.9.tar.gz | tar xz --strip 1
RUN ln -s /usr/bin/sh /bin/sh
RUN cd build && \
    cmake3 -DFLB_ALL=OFF \
    -DFLB_RELEASE=On \
    -DFLB_JEMALLOC=On \
    -DFLB_STREAM_PROCESSOR=Off \
    -DFLB_TLS=On \
    -DFLB_AWS=OFF \
    -DFLB_SHARED_LIB=Off \
    -DFLB_EXAMPLES=Off \
    -DFLB_RECORD_ACCESSOR=On \
    -DFLB_IN_SYSTEMD=Off \
    -DFLB_HTTP_SERVER=On \
    -DFLB_POSIX_TLS=Off \
    -DFLB_CONFIG_YAML=Off \
    -DFLB_SIGNV4=Off \
    -DFLB_WASM=Off \
    -DFLB_LUAJIT=Off \
    -DFLB_PROXY_GO=Off \
    -DFLB_CUSTOM_CALYPTIA=OFF \
    -DFLB_CHUNK_TRACE=OFF \
    \
    -DFLB_IN_COLLECTD=Off \
    -DFLB_IN_CPU=Off \
    -DFLB_IN_DISK=Off \
    -DFLB_IN_DOCKER=Off \
    -DFLB_IN_EXEC=Off \
    -DFLB_IN_EXEC_WASI=Off \
    -DFLB_IN_FLUENTBIT_METRICS=Off \
    -DFLB_IN_FORWARD=Off \
    -DFLB_IN_HEAD=Off \
    -DFLB_IN_HEALTH=Off \
    -DFLB_IN_KMSG=Off \
    -DFLB_IN_MEM=Off \
    -DFLB_IN_MQTT=Off \
    -DFLB_IN_NETIF=Off \
    -DFLB_IN_PROC=Off \
    -DFLB_IN_RANDOM=Off \
    -DFLB_IN_SERIAL=Off \
    -DFLB_IN_STDIN=Off \
    -DFLB_IN_SYSLOG=Off \
    -DFLB_IN_SYSTEMD=Off \
    -DFLB_IN_TAIL=On \
    -DFLB_IN_TCP=Off \
    -DFLB_IN_THERMAL=Off \
    -DFLB_IN_WINLOG=Off \
    -DFLB_IN_WINEVTLOG=Off \
    -DFLB_IN_NODE_EXPORTER_METRICS=Off \
    -DFLB_IN_DOCKER_EVENTS=Off \
    -DFLB_IN_PROMETHEUS_SCRAPE=OFF \
    -DFLB_IN_OPENTELEMETRY=OFF \
    -DFLB_IN_STORAGE_BACKLOG=Off \
    -DFLB_IN_HTTP=OFF \
    -DFLB_IN_STATSD=OFF \
    -DFLB_IN_EVENT_TEST=OFF \
    -DFLB_IN_EVENT_TYPE=OFF \
    -DFLB_IN_EMITTER=OFF \
    \
    -DFLB_FILTER_AWS=Off \
    -DFLB_FILTER_ECS=Off \
    -DFLB_FILTER_EXPECT=Off \
    -DFLB_FILTER_GREP=Off \
    -DFLB_FILTER_KUBERNETES=Off \
    -DFLB_FILTER_LUA=Off \
    -DFLB_FILTER_MODIFY=Off \
    -DFLB_FILTER_NEST=Off \
    -DFLB_FILTER_PARSER=Off \
    -DFLB_FILTER_RECORD_MODIFIER=Off \
    -DFLB_FILTER_REWRITE_TAG=Off \
    -DFLB_FILTER_STDOUT=Off \
    -DFLB_FILTER_THROTTLE=Off \
    -DFLB_FILTER_WASM=Off \
    -DFLB_FILTER_TYPE_CONVERTER=Off \
    -DFLB_FILTER_NIGHTFALL=Off \
    -DFLB_FILTER_GEOIP2=OFF \
    -DFLB_FILTER_CHECKLIST=OFF \
    -DFLB_FILTER_ALTER_SIZE=OFF \
    -DFLB_FILTER_MULTILINE=OFF \
    \
    -DFLB_OUT_AZURE=Off \
    -DFLB_OUT_AZURE_KUSTO=Off \
    -DFLB_OUT_AZURE_BLOB=OFF \
    -DFLB_OUT_BIGQUERY=Off \
    -DFLB_OUT_COUNTER=Off \
    -DFLB_OUT_CLOUDWATCH_LOGS=Off \
    -DFLB_OUT_DATADOG=Off \
    -DFLB_OUT_ES=Off \
    -DFLB_OUT_FILE=Off \
    -DFLB_OUT_KINESIS_FIREHOSE=Off \
    -DFLB_OUT_KINESIS_STREAMS=Off \
    -DFLB_OUT_FLOWCOUNTER=Off \
    -DFLB_OUT_FORWARD=Off \
    -DFLB_OUT_GELF=Off \
    -DFLB_OUT_HTTP=Off \
    -DFLB_OUT_INFLUXDB=Off \
    -DFLB_OUT_KAFKA=Off \
    -DFLB_OUT_KAFKA_REST=Off \
    -DFLB_OUT_LIB=Off \
    -DFLB_OUT_NATS=Off \
    -DFLB_OUT_NULL=Off \
    -DFLB_OUT_PGSQL=On \
    -DFLB_OUT_PLOT=Off \
    -DFLB_OUT_SLACK=Off \
    -DFLB_OUT_S3=Off \
    -DFLB_OUT_SPLUNK=Off \
    -DFLB_OUT_STACKDRIVER=Off \
    -DFLB_OUT_STDOUT=On \
    -DFLB_OUT_TCP=Off \
    -DFLB_OUT_TD=Off \
    -DFLB_OUT_LOKI=Off \
    -DFLB_OUT_OPENSEARCH=Off \
    -DFLB_OUT_PROMETHEUS_EXPORTER=Off \
    -DFLB_OUT_PROMETHEUS_REMOTE_WRITE=OFF \
    -DFLB_OUT_SKYWALKING=OFF \
    -DFLB_OUT_LOGDNA=OFF \
    -DFLB_OUT_NRLOGS=OFF \
    -DFLB_OUT_OPENTELEMETRY=OFF \
    -DFLB_OUT_CALYPTIA=OFF \
    -DFLB_OUT_WEBSOCKET=OFF \
    -DFLB_OUT_SYSLOG=OFF \
    \
    .. && \
    \
    make -j4 && \
    make install && \
    strip -s /usr/local/bin/fluent-bit


FROM centos:7
LABEL maintainer="suconghou@gmail.com"
COPY --from=build /usr/local/bin/fluent-bit /usr/local/bin/fluent-bit
COPY --from=build /usr/local/etc/fluent-bit/fluent-bit.conf /usr/local/etc/fluent-bit/fluent-bit.conf
COPY --from=build /usr/local/etc/fluent-bit/parsers.conf /usr/local/etc/fluent-bit/parsers.conf
