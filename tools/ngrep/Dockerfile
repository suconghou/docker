FROM alpine AS build
RUN apk add --update gcc g++ make curl libpcap-dev perl
RUN NGREP_VERION=V1_47 && curl -sSL https://github.com/jpr5/ngrep/archive/${NGREP_VERION}.tar.gz | tar xz --strip 1 && ls -lha
RUN CFLAGS="-Os -ffunction-sections -fdata-sections" LDFLAGS="-static-libstdc++ -static-libgcc --static -Wl,-Bstatic,--gc-sections" ./configure && \
make && strip -s ngrep

FROM alpine
LABEL maintainer="suconghou@gmail.com"
COPY --from=build /ngrep /usr/local/bin/ngrep
