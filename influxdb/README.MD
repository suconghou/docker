## influxdb

influxdb,telegraf,chronograf

https://portal.influxdata.com/downloads


### influxdb

```
docker run --name influxdb -m 100m --rm -it -p 8086:8086 suconghou/influxdb
```

```
docker run --name influxdb -m 100m --restart always -d -p 8086:8086 suconghou/influxdb
```

### chronograf

```
docker run --name chronograf -m 60m --rm -it -p 8888:8888 suconghou/influxdb:chronograf
```

```
docker run --name chronograf -m 60m --restart always -d -p 8888:8888 suconghou/influxdb:chronograf
```


## dockerfile

https://github.com/suconghou/docker/tree/master/influxdb


docker image  https://hub.docker.com/r/suconghou/influxdb/

