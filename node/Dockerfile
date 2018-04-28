FROM alpine AS build
RUN apk update && apk upgrade && apk add libstdc++ binutils-gold curl g++ gcc gnupg libgcc linux-headers make python
RUN NODE_VERSION=10.0.0 && curl -sSL https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}.tar.xz | tar xJ 
RUN cd node-v*.*.* && CFLAGS="-Os -ffunction-sections -fdata-sections" LDFLAGS="-static-libstdc++ -static-libgcc --static -Wl,-Bstatic,--gc-sections" ./configure && \
make && ls -lha


