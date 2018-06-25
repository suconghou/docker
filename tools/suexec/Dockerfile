FROM alpine AS build
RUN apk update && apk upgrade && apk add gcc g++ make
RUN wget -O- https://github.com/ncopa/su-exec/archive/master.tar.gz | tar xz --strip 1 && export CFLAGS="-Wall -Werror -s" && make && make su-exec-static

FROM alpine
LABEL maintainer="suconghou@gmail.com"
COPY --from=build /su-exec /su-exec-static /usr/local/sbin/
