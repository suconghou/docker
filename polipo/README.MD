## polipo

```
docker run -d --name=polipo --restart always -m 100m --log-opt max-size=1m -p 18123:8123  suconghou/polipo proxyAddress=0.0.0.0
```


```
proxyAddress = "127.0.0.1"
proxyPort = 8123

# if you've got plenty of memory
chunkHighMark = 50331648
objectHighMark = 16384

# disable the on-disk cache
diskCacheRoot = ""

pmmFirstSize = 163840
pmmSize = 81920


# socksParentProxy = "localhost:9050"
# socksProxyType = socks5

```