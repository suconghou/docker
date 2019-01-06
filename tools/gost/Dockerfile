FROM alpine AS build
ADD https://github.com/ginuerzh/gost/releases/download/v2.7.0/gost_2.7.0_linux_amd64.tar.gz /
RUN apk add binutils && tar xzv --strip 1 -f *.gz && strip -s gost

FROM scratch
LABEL maintainer="suconghou@gmail.com"
COPY --from=build /gost /usr/local/bin/
CMD ["gost","-L","sni://:6443"]
