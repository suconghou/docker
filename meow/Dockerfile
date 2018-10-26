FROM golang:alpine AS build
RUN apk add git binutils && \
go get github.com/netheril96/MEOW && \
cd bin && strip -s * && mv MEOW /meow

FROM alpine
LABEL maintainer="suconghou@gmail.com"
COPY --from=build /meow /usr/local/bin/meow
