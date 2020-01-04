FROM alpine AS build
RUN wget -O- https://github.com/q3aql/aria2-static-builds/releases/download/v1.35.0/aria2-1.35.0-linux-gnu-64bit-build1.tar.bz2 | tar jx --strip 1 && \
    mv aria2c ca-certificates.crt /

FROM alpine
COPY --from=build /aria2c /usr/local/bin/
COPY --from=build /ca-certificates.crt /etc/ssl/certs/
CMD [ "aria2c","--dir=/data/share","--file-allocation=trunc","--disable-ipv6=true","--enable-rpc=true","--rpc-allow-origin-all=true","--rpc-listen-all=true","--rpc-secret=will2020" ]
