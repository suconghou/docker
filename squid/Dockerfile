FROM alpine AS build
RUN apk update && apk upgrade && apk add gcc g++ make file perl
RUN SQUID_VERSION=squid-3.5.27 && wget http://www.squid-cache.org/Versions/v3/3.5/${SQUID_VERSION}.tar.xz && tar xJf ${SQUID_VERSION}.tar.xz && cd ${SQUID_VERSION} && ls -lha && \
export CFLAGS=-Os && export LDFLAGS="-static-libstdc++ -static-libgcc --static -Wl,-Bstatic" && ./configure --disable-loadable-modules --disable-icap-client --disable-wccp --disable-wccpv2 --disable-snmp --disable-eui --disable-htcp --disable-select --disable-ident-lookups --disable-auto-locale --disable-auth-basic --disable-auth-digest --disable-auth-negotiate --disable-auth-ntlm --disable-external-acl-helpers --disable-url-rewrite-helpers --disable-storeid-rewrite-helpers && make -j4 && make install
RUN strip -s /usr/local/squid/bin/* /usr/local/squid/sbin/* /usr/local/squid/libexec/cachemgr.cgi /usr/local/squid/libexec/diskd /usr/local/squid/libexec/log_file_daemon /usr/local/squid/libexec/unlinkd

FROM alpine
LABEL maintainer="suconghou@gmail.com"
COPY --from=build /usr/local/squid/bin/ /usr/local/bin/
COPY --from=build /usr/local/squid/sbin/ /usr/local/sbin/
COPY --from=build /usr/local/squid/libexec/cachemgr.cgi /usr/local/squid/libexec/cachemgr.cgi
COPY --from=build /usr/local/squid/libexec/diskd /usr/local/squid/libexec/diskd
COPY --from=build /usr/local/squid/libexec/log_file_daemon /usr/local/squid/libexec/log_file_daemon
COPY --from=build /usr/local/squid/libexec/unlinkd /usr/local/squid/libexec/unlinkd
COPY --from=build /usr/local/squid/etc/squid.conf /usr/local/squid/etc/squid.conf
COPY --from=build /usr/local/squid/etc/mime.conf /usr/local/squid/etc/mime.conf
COPY --from=build /usr/local/squid/share/errors/templates /usr/local/squid/share/errors/templates
COPY --from=build /usr/local/squid/share/icons /usr/local/squid/share/icons
RUN cd /usr/local/squid/ && mkdir -p var/logs var/run var/cache && chmod 777 var/logs var/cache