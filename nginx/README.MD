## nginx

static build nginx

nginx version 1.13.6

## Usage

```
FROM suconghou/nginx
ADD . .
RUN cp nginx.conf /etc/nginx/nginx.conf
EXPOSE 80 443
CMD ["nginx", "-g", "daemon off;"]
```


## Dockerfile

https://github.com/suconghou/docker/tree/master/nginx

Docker image https://hub.docker.com/r/suconghou/nginx/

static build

在运行 `make`之前

修改`objs/Makefile`文件, 搜索`link`关键字, 在 link `objs/nginx` 的时候补充上 `-static`参数静态编译
```
objs/ngx_modules.o -static \
```


for nginx:busybox can be run use `nginx -g "user root root;"`

