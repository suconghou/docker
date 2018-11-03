FROM alpine AS build
RUN apk add binutils && \
wget -O- https://github.com/snail007/goproxy/releases/download/v6.3/proxy-linux-amd64.tar.gz | tar xz && \
strip -s proxy

FROM alpine
LABEL maintainer="suconghou@gmail.com"
COPY --from=build /proxy /usr/local/bin/
COPY --from=build /direct /blocked /etc/
