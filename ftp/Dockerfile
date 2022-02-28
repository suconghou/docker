FROM alpine AS build
RUN apk add --update wget make gcc g++ zlib-dev zlib-static
RUN BFTPD_VERSION=bftpd-5.7 && wget --no-check-certificate https://jaist.dl.sourceforge.net/project/bftpd/bftpd/${BFTPD_VERSION}/${BFTPD_VERSION}.tar.gz && tar zxf ${BFTPD_VERSION}.tar.gz && cd bftpd && ls -lha && \
export CFLAGS="-ffunction-sections -fdata-sections -Os" && \
LIBS="-static-libstdc++ -static-libgcc --static -Wl,-Bstatic,--gc-sections" ./configure --enable-libz && \
sed -i "s{-o bftpd{-static -o bftpd{" Makefile && make -j2 && strip -s bftpd

FROM alpine
LABEL maintainer="suconghou@gmail.com"
COPY --from=build /bftpd/bftpd /usr/local/bin/bftpd
