## Shadowsocks docker


shadowsocks-rust version 1.7.0

shadowsocks-libev version 3.2.5

## Usage

**shadowsocks-rust**

start docker
```
docker run --name shadowsocks -d -p 443:8388 suconghou/shadowsocks -k 123456 -s "[::]:8388" -m aes-256-gcm
```


**shadowsocks-libev**


```
docker run --name shadowsocks -d -p 443:443 suconghou/shadowsocks:server -s 0.0.0.0 -p 443 -k 123456 -m chacha20-ietf-poly1305 -t 300 -d 8.8.8.8 --fast-open -u
```

`-v` show the version

and encryption method is `chacha20-ietf-poly1305`

## Dockerfile

https://github.com/suconghou/docker/tree/master/shadowsocks

docker images

https://hub.docker.com/r/suconghou/shadowsocks/



