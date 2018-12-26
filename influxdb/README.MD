## influxdb

influxdb,telegraf,chronograf

https://portal.influxdata.com/downloads


### influxdb

```
docker network create influx
```



```
docker run --name influxdb -m 200m --rm -it -p 8086:8086 --net influx suconghou/influxdb
```



```
docker run --name influxdb \
-m 200m \
--restart always \
-d \
-p 127.0.0.1:8086:8086 \
--net influx \
suconghou/influxdb
```

### telegraf


2018-12-25T09:05:49Z I! Starting Telegraf 
2018-12-25T09:05:49Z I! Loaded inputs: inputs.mem inputs.processes inputs.swap inputs.system inputs.cpu inputs.disk inputs.diskio inputs.kernel
2018-12-25T09:05:49Z I! Loaded aggregators: 
2018-12-25T09:05:49Z I! Loaded processors: 
2018-12-25T09:05:49Z I! Loaded outputs: influxdb
2018-12-25T09:05:49Z I! Tags enabled: host=will-image.novalocal
2018-12-25T09:05:49Z I! [agent] Config: Interval:10s, Quiet:false, Hostname:"will-image.novalocal", Flush Interval:10s


### chronograf

```
docker run --name chronograf -m 100m --rm -it -p 8888:8888 suconghou/influxdb:chronograf
```

```
docker run --name chronograf \
-m 100m \
--restart always \
-d \
-p 127.0.0.1:8888:8888 \
--net influx \
suconghou/influxdb:chronograf
```


## dockerfile

https://github.com/suconghou/docker/tree/master/influxdb


docker image  https://hub.docker.com/r/suconghou/influxdb/

