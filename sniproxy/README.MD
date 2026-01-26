## sniproxy

static build sniproxy

version 0.7.0


```
sniproxy -c /etc/sniproxy.conf -f
```

```
docker run --privileged \
-d \
--log-opt max-size=1m \
--name sni \
--restart always \
-p 0.0.0.0:443:443 \
-p 0.0.0.0:80:80 \
-m 100m \
suconghou/sniproxy
```


## Dockerfile

https://github.com/suconghou/docker/tree/master/sniproxy

docker image  https://hub.docker.com/r/suconghou/sniproxy/


