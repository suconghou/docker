## Haproxy

haproxy docker image

static build haproxy

haproxy version 1.8.0

haproxy source code release here http://www.haproxy.org/#down

## Dockerfile

https://github.com/suconghou/docker/tree/master/haproxy

docker image  https://hub.docker.com/r/suconghou/haproxy/

static build

```
make TARGET=linux2628 ARCH=X86_64 USE_STATIC_PCRE=1 LDFLAGS="-static" CFLAGS="-O3" ADDLIB="/usr/lib/libc.a" -j2
```
