## nghttpx

https://github.com/nghttp2/nghttp2

version 1.33.0



默认配置文件位置`/etc/nghttpx/nghttpx.conf`

示例配置
```
frontend=0.0.0.0,80;tls
backend=127.0.0.1,3128;no-tls
private-key-file=xx.key
certificate-file=xx.crt
http2-proxy=yes

workers=1
# 关闭客户端 TLS 认证
verify-client=no
# 不添加 X-Forwarded-For 头
add-x-forwarded-for=no
# 不添加 Via 头
no-via=yes
# 不查询 OCSP 服务器
no-ocsp=yes
# 只使用 TLS 1.2
tls-min-proto-version=TLSv1.2
tls-max-proto-version=TLSv1.2
# 只使用 ECDHE 交换（目前性能安全比最优）和 AES 加密，指定 128 位是因为它已经足够安全但性能比 256 位稍优一些
ciphers=ECDHE+AES128
```


使用 `nghttpx -b 127.0.0.1,8123` 启动

## Dockerfile

https://github.com/suconghou/docker/tree/master/nghttpx

Docker image https://hub.docker.com/r/suconghou/nghttpx/

