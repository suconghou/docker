## Shadowsocks docker


shadowsocks-go version 1.2.1

shadowsocks-libev version 3.2.0

## Usage

**shadowsocks-go**

start docker
```
docker run --name shadowsocks -d -p 443:443 suconghou/shadowsocks -k 123456 -p 443 -m aes-128-cfb -t 300
```
`-k` is the password, `-p` is the server port , and  encryption method is `aes-128-cfb`

`--version` show the version

**shadowsocks-libev**


```
docker run --name shadowsocks -d -p 443:443 suconghou/shadowsocks:server -s 0.0.0.0 -p 443 -k 123456 -m chacha20-ietf-poly1305 -t 300 -d 8.8.8.8 --fast-open -u
```

`-v` show the version

and encryption method is `chacha20-ietf-poly1305`

## Dockerfile

https://github.com/suconghou/docker/tree/master/shadowsocks

the binary file is from https://github.com/shadowsocks/shadowsocks-go and is stripped

docker images

https://hub.docker.com/r/suconghou/shadowsocks/



