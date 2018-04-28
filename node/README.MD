## nodejs

nodejs docker is very easy , you can just user the `alpine` and run `apk update && apk upgrade && apk add --no-cache nodejs` in your application docker , and then copy your code

it's node version is v6.2.0 , and with npm,you can update npm and package with `npm update -g`

参考 https://github.com/nodejs/docker-node/blob/master/10/alpine/Dockerfile

只需使用 `CFLAGS="-Os -ffunction-sections -fdata-sections" LDFLAGS="-static-libstdc++ -static-libgcc --static -Wl,-Bstatic,--gc-sections"` 即可静态编译




## MongoDb

## NodeJs

```
echo 'http://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories
apk upgrade --update
apk add --no-cache mongodb nodejs
```

RUN cd node-v*.*.* && CFLAGS="-Os -ffunction-sections -fdata-sections" LDFLAGS="-static-libstdc++ -static-libgcc --static -Wl,-Bstatic,--gc-sections" ./configure && \
make -j2 && ls -lha
