## shadowsocks docker

shadowsocks docker , it is very small , only 3.3MB

start docker 
```
docker run --name shadowsocks -d -p 443:443 suconghou/shadowsocks /shadowsocks -k 123456 -p 443 
```
默认的加密方式为`aes-256-cfb`
shadowsocks-go version 1.1.5 with 64bit 


