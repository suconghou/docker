FROM alpine AS build
RUN wget -O- https://github.com/jedisct1/dnscrypt-proxy/releases/download/2.0.19/dnscrypt-proxy-linux_x86_64-2.0.19.tar.gz | tar xz --strip 1

FROM alpine
LABEL maintainer="suconghou@gmail.com"
RUN apk add --update --no-cache ca-certificates
COPY --from=build /dnscrypt-proxy /usr/local/bin/
ADD dnscrypt-proxy.toml /etc/
CMD ["dnscrypt-proxy","-config","/etc/dnscrypt-proxy.toml"]
