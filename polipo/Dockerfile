FROM alpine AS build
RUN apk update && apk upgrade && apk add gcc g++ make curl 
RUN curl -sSL https://github.com/jech/polipo/archive/master.tar.gz | tar xz --strip 1 && ls -lha && \
sed -i '/^LOCAL_ROOT.*/cLOCAL_ROOT = \/' Makefile && \
sed -i '/^DISK_CACHE_ROOT*/cDISK_CACHE_ROOT = \/' Makefile
RUN CFLAGS="-Os -ffunction-sections -fdata-sections" LDFLAGS="-Wl,--gc-sections -static" make -j2 && strip -s polipo

FROM scratch
LABEL maintainer="suconghou@gmail.com"
COPY --from=build /polipo /polipo
ENTRYPOINT ["/polipo"]
