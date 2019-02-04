## goaccess

https://goaccess.io/download

static build goaccess


`docker build -t=suconghou/tools:goaccess .`

https://dev.maxmind.com/geoip/legacy/geolite/

```
wget http://geolite.maxmind.com/download/geoip/database/GeoLiteCountry/GeoIP.dat.gz
```

```
docker run --rm -it -m 160m \
-p 127.0.0.1:7890:7890 \
-v /var/log/nginx:/data \
-v /data/db:/data/db \
suconghou/tools:goaccess \
goaccess /data/access.log \
-o /data/report.html \
--log-format=COMBINED \
--real-time-html \
--geoip-database /data/db/GeoIP.dat \
--ws-url ws://report.tuwenzhibo.com:80/ws
```


## Dockerfile

https://github.com/suconghou/docker/tree/master/tools/goaccess

docker image https://hub.docker.com/r/suconghou/tools/tags/
