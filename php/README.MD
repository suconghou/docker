## PHP

静态编译 php,基于 alpine,只依赖 musl 和内核,镜像内只有 `php` / `php-fpm` 二进制

当前版本 `8.5.12`

## Usage

```
docker run --rm -it suconghou/php php -v
docker run --rm -it suconghou/php php-fpm -v
```

## docker image

https://hub.docker.com/r/suconghou/php/

## dockerfile

https://github.com/suconghou/docker/tree/master/php

## 目录

| 目录 | php 版本 | 说明 |
| --- | --- | --- |
| `php/` | `8.5.12` | 主线,对应 `latest` |
| `php/84` | `8.4.27` | 8.4 分支,仅安全修复 |
| `php/83` | `8.3.36` | 8.3 分支,仅安全修复 |
| `php/82` | `8.2.35` | 8.2 已 EOL,保留最后一个版本 |

每个目录下的四个 Dockerfile 各自独立,只差 php 版本号,升级时同步改

## tags

`latest` `8.5.12` 基础版,包含 cli + fpm 和官方大部分扩展,静态编译

`redis` `8.5.12_redis` 在基础版上增加第三方扩展

- redis(启用 igbinary 序列化)
- igbinary
- msgpack
- imagick
- apcu

并把 php.ini 的 `session.serialize_handler` 改为 `igbinary`

## opcache / JIT

8.5 系列编译时加了 `--enable-opcache-jit`,opcache 和 JIT 都静态编进二进制,
php.ini 里默认 `opcache.jit=tracing` / `opcache.jit_buffer_size=64M`

8.2/8.3/8.4 没有 opcache:PHP 8.5 之前 `ext/opcache/config.m4` 里硬编码
`ext_shared=yes`,opcache 只能编成 `opcache.so`;而静态二进制不支持动态加载
(`Dynamic loading not supported`),所以加载不了。要支持得给 php-src 打补丁
(改 `ZendAccelerator.c` / `config.m4` / `main.c` 三处),暂未做

`mongo` `8.5.12_mongo` 在 `redis` 基础上增加

- mongodb

`swoole` `8.5.12_swoole_6.2.3` 在 `mongo` 基础上增加

- swoole

此标签**不含** fpm,只有 cli

## 版本

| 组件 | 版本 |
| --- | --- |
| php | 8.5.12 |
| libxml2 | 2.15.4 |
| libxslt | 1.1.45 |
| curl | 8.23.0 |
| freetype | 2.15.0 |
| libzip | 1.12.1 |
| ImageMagick | 7.1.2-34 |
| redis | 6.3.0 |
| msgpack | 3.0.1 |
| igbinary | 3.2.17RC1 |
| imagick | 3.8.1 |
| apcu | 5.1.28 |
| mongodb | 2.5.5 |
| swoole | 6.2.3 |

## 构建

```
cd php && ./make.sh          # 基础版
cd php && ./make-redis.sh    # redis 版
cd php && ./make-mongo.sh    # mongo 版
cd php && ./make-swoole.sh   # swoole 版
```

国内构建可替换 alpine 源,已默认写入各 Dockerfile

```
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories
```

libxslt 1.1.45 起 configure 强制要求 python3,构建阶段已安装

igbinary 稳定版 `3.2.16` 不支持 php 8.5(编译失败),`3.2.17RC1` 才加入 8.5 支持,
所以 8.5 用 RC 版,84/83/82 目录仍用 `3.2.16`。等 3.2.17 正式版发布后统一替换
