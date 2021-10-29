## nodejs

静态编译 node

参考 https://github.com/nodejs/docker-node/blob/master/10/alpine/Dockerfile

单核编译可能需要2个小时,请谨慎处理.

可以使用下面的命令限制编译时最多使用50%的CPU
```
docker build -t=suconghou/node -t=suconghou/node:17.0.1 --cpu-period=100000 --cpu-quota=50000 .
```

alpine源里的nodejs可由`apk search nodejs`查看

## MongoDb


`apk search mongodb`

`apk add mongodb`

`mongo --version`

`mongod --version`

`mongos --version`

`mongoperf -h`



