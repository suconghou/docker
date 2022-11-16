FROM alpine AS build
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories
RUN apk add --update libstdc++ binutils-gold curl g++ gcc gnupg libgcc linux-headers make python3
RUN NODE_VERSION=18.12.1 && curl -sSL https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}.tar.xz | tar xJ
RUN cd node-v*.*.* && CFLAGS="-Os -ffunction-sections -fdata-sections" LDFLAGS="-static-libstdc++ -static-libgcc --static -Wl,-Bstatic,--gc-sections" ./configure && make -j$(nproc) CFLAGS="-Os -ffunction-sections -fdata-sections" LDFLAGS="-static-libstdc++ -static-libgcc --static -Wl,-Bstatic,--gc-sections" && \
    cd out/Release && strip -s node openssl-cli && mv node openssl-cli /

FROM alpine
LABEL maintainer="suconghou@gmail.com"
COPY --from=build /node /usr/local/bin/node
COPY --from=build /openssl-cli /usr/local/bin/openssl-cli


