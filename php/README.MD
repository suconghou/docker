## PHP

static build php based on alpine

## Usage

```
docker run --rm -it suconghou/php sh
```


## docker image

https://hub.docker.com/r/suconghou/php/

## dockerfile

https://github.com/suconghou/docker/tree/master/php

## 8.0 & 8.1 & 8.2 & 8.3

**官方静态编译**

`latest` `8.1.x` 为8.1最新版,包含 cli,fpm,包含官方大部分扩展,静态编译

`cli` 从`latest`版本挑出 cli 部分.

`fpm` 从`latest`版本挑出 fpm 部分.

**包含第三方库的静态编译**


`redis` 此标签与`latest`类似,不同的是包含了

- redis
- igbinary
- msgpack
- imagick
- apcu

redis 扩展启用 igbinary 支持,静态编译

并且修改了 php.ini 的 session serialize_handler `session.serialize_handler=igbinary`


`mongo` 标签与`redis`类似，在`redis`的基础上包含了mongodb

`swoole` `swoole_4.x.x` 此标签与`redis`类似,不同的是在其基础上包含了

- swoole

此标签内不包含fpm


## 7.3 / 7.4

> 7.3 / 7.4 已不再持续更新

**官方静态编译**

`7.3.x` `7.3` 为7.3最新版,包含 cli,fpm,包含官方大部分扩展,静态编译

**包含第三方库的静态编译**


`73_redis` 此标签与`latest`类似,不同的是包含了

- redis
- igbinary
- msgpack
- imagick
- apcu

redis 扩展启用 igbinary 支持,静态编译

并且修改了 php.ini 的 session serialize_handler `session.serialize_handler=igbinary`

`73_swoole` `73_swoole_4.x.x` 此标签与`73_redis`类似,不同的是在其基础上包含了

- swoole

此标签内不包含fpm



## 7.2

7.2 已不再持续更新

**官方静态编译**

`7.2.x` `7.2` 为 7.2 最新版,包含 cli,fpm,包含官方大部分扩展,静态编译

**包含第三方库的静态编译**

`72_redis` 此标签与`7.2`类似,不同的是包含了

- redis
- igbinary
- msgpack
- imagick

redis 扩展启用 igbinary 支持,静态编译

并且修改了 php.ini 的 session serialize_handler `session.serialize_handler=igbinary`

`72_swoole` `72_swoole_4.x.x` 此标签与`72_redis`类似,不同的是在其基础上包含了

- swoole

此标签内不包含fpm


## 7.1

`--with-mcrypt, --enable-gd-native-ttf` 这两个参数php7.2已经被废弃

`7.1.x` 7.1 最新版,与 7.2`latest`版类似,包含 cli,fpm,包含官网大部分扩展,静态编译.

与 7.2 不同的是,含有`mcrypt`扩展,此扩展在 7.2 中已废除,7.2 推荐使用`openssl`扩展

7.1已不再维护



国内构建 可考虑替换alpine源

```
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories
```