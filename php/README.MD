## PHP

based on alpine

version php7.1.25

## Usage

```
docker run --rm -it suconghou/php sh
```

版本:两个主要版本 7.3 和 7.2

关于标签

## 7.3

**官方静态编译**

`latest` `7.3.x` `7.3` 为7.3最新版,包含 cli,fpm,包含官方大部分扩展,静态编译

`cli` 从`latest`版本挑出 cli 部分.

`fpm` 从`latest`版本挑出 fpm 部分.

**包含第三方库的静态编译**


`redis` 此标签与`latest`类似,不同的是包含了

- redis
- igbinary
- msgpack
- imagick

redis 扩展启用 igbinary 支持,静态编译

并且修改了 php.ini 的 session serialize_handler `session.serialize_handler=igbinary`

`swoole` `swoole_4.x.x` 此标签与`redis`类似,不同的是在其基础上包含了

- swoole

此标签内不包含fpm



## 7.2

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

## docker image

https://hub.docker.com/r/suconghou/php/

## dockerfile

https://github.com/suconghou/docker/tree/master/php
