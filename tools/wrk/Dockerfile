FROM alpine AS build
RUN apk add --update alpine-sdk perl
RUN git clone -b 4.0.2 https://github.com/wg/wrk
RUN cd wrk && CFLAGS="-Os -ffunction-sections -fdata-sections" LDFLAGS="-static-libstdc++ -static-libgcc --static -Wl,-Bstatic,--gc-sections" make && \
strip -s wrk

FROM alpine
LABEL maintainer="suconghou@gmail.com"
COPY --from=build /wrk/wrk /usr/local/bin/
