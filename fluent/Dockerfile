FROM centos:7
RUN yum install -y gcc make wget tar gcc-c++ flex bison
RUN yum install -y https://download-ib01.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN yum install -y cmake3
RUN wget -O- https://github.com/fluent/fluent-bit/archive/refs/tags/v1.7.9.tar.gz | tar xz --strip 1
RUN cd build && \
cmake3 -DFLB_RELEASE=On \
-DFLB_JEMALLOC=On \
-DFLB_SMALL=On \
-DFLB_STREAM_PROCESSOR=Off \
-DFLB_TLS=Off \
-DFLB_SHARED_LIB=Off \
-DFLB_EXAMPLES=Off \
-DFLB_HTTP_SERVER=On \
-DFLB_IN_SYSTEMD=Off \
-DFLB_OUT_KAFKA=Off \
-DFLB_OUT_PGSQL=Off .. && \
make -j4 && \
make install && \
strip -s /usr/local/bin/fluent-bit


FROM centos:7
LABEL maintainer="suconghou@gmail.com"
COPY --from=build /usr/local/bin/fluent-bit /usr/local/bin/fluent-bit
COPY --from=build /usr/local/etc/fluent-bit/fluent-bit.conf /usr/local/etc/fluent-bit/fluent-bit.conf
COPY --from=build /usr/local/etc/fluent-bit/parsers.conf /usr/local/etc/fluent-bit/parsers.conf
