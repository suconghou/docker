FROM alpine AS build
ADD https://github.com/txthinking/brook/releases/download/v20180707/brook /brook
RUN chmod +x /brook

FROM scratch
LABEL maintainer="suconghou@gmail.com"
COPY --from=build /brook /
ENTRYPOINT ["/brook"]
CMD ["server","-l",":18123","-p","su"]
