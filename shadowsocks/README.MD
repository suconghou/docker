## Shadowsocks docker

**shadowsocks docker , it is very small , only 2.3MB**

shadowsocks-go version 1.2.1 with 64bit

## Usage

**shadowsocks-go**

`docker build -t=suconghou/shadowsocks .`

start docker
```
docker run --name shadowsocks -d -p 443:443 suconghou/shadowsocks -k 123456 -p 443 -m aes-128-cfb -t 300
```
`-k` is the password, `-p` is the server port , and  encryption method is `aes-128-cfb`


**shadowsocks-libev**

`docker build -t=suconghou/shadowsocks:libev -f Dockerfile-libev .`


shadowsocks-libev version 3.0.6 ,total size 885 KB

```
docker run --name shadowsocks -d -p 443:443 suconghou/shadowsocks:libev -s 0.0.0.0 -p 443 -k 123456 -m aes-128-cfb -t 300 -d 8.8.8.8 --fast-open -u
```

and encryption method is `aes-128-cfb`

## Dockerfile

https://github.com/suconghou/docker/tree/master/shadowsocks

the binary file is from https://github.com/shadowsocks/shadowsocks-go and is stripped



