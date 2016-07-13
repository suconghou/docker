## Shadowsocks docker

**shadowsocks docker , it is very small , only 3.3MB**

shadowsocks-go version 1.1.5 with 64bit


## Usage

start docker
```
docker run --name shadowsocks -d -p 443:443 suconghou/shadowsocks /shadowsocks -k 123456 -p 443
```
`-k` is the password, `-p` is the server port , and default encryption method is `aes-256-cfb`



## Dockerfile

https://github.com/suconghou/docker/tree/master/shadowsocks

the binary file is from https://github.com/shadowsocks/shadowsocks-go and is stripped

