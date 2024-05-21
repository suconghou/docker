FROM alpine AS build
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories
RUN apk add --update gcc g++ make wget linux-headers
RUN REDIS_VERSION=redis-7.2.5 && wget http://download.redis.io/releases/${REDIS_VERSION}.tar.gz && tar xzf ${REDIS_VERSION}.tar.gz && cd ${REDIS_VERSION} && \
    make LDFLAGS=-static -j2 && make install && strip -s /usr/local/bin/* && mv redis.conf /etc/redis.conf

FROM alpine
LABEL maintainer="suconghou@gmail.com"
COPY --from=build /usr/local/bin/ /usr/local/bin/
COPY --from=build /etc/redis.conf /etc/redis.conf
EXPOSE 6379
