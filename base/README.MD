

## DB


### mysql

```
docker run --name db -it -e MYSQL_ROOT_PASSWORD=123456 -p 3306:3306 mysql:5.6 
```

### redis

```
docker run --name redis -it -p 6379:6379 suconghou/redis:busybox redis-server --protected-mode no
```
