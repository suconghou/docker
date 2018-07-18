## PHP

based on alpine

version php7.1.20


## Usage

```
docker run --rm -it suconghou/php sh
```


版本:两个版本 7.1 和 7.2

关于标签

## 7.2

`latest` `7.2.x` 为7.2最新版,包含cli,fpm,包含官方大部分扩展,静态编译

`cli` 从`latest`版本挑出cli部分.

`fpm` 从`latest`版本挑出fpm部分.

`opcache` 此标签与`latest`类似,不同的是包含了`opcache`扩展,并且默认启用

`redis` 此标签与`latest`类似,不同的是包含了`redis`扩展和`igbinary,msgpack`扩展,redis扩展启用igbinary支持,静态编译

并且修改了 php.ini 的 session serialize_handler `session.serialize_handler=igbinary`


## 7.1

`7.1.x` 7.1最新版,与7.2`latest`版类似,包含cli,fpm,包含官网大部分扩展,静态编译.

与7.2不同的是,含有`mcrypt`扩展,此扩展在7.2中已废除,7.2推荐使用`openssl`扩展



## php


https://hub.docker.com/r/suconghou/php/



### php:cli

cli version 23.25 MB

```
[PHP Modules]
bcmath
bz2
calendar
Core
ctype
curl
date
dom
exif
fileinfo
filter
ftp
gd
hash
iconv
json
libxml
mbstring
mcrypt
mysqli
mysqlnd
openssl
pcntl
pcre
PDO
pdo_mysql
pdo_sqlite
Phar
posix
Reflection
session
SimpleXML
sockets
SPL
sqlite3
standard
tokenizer
xml
xmlreader
xmlwriter
xsl
zip

[Zend Modules]


```

### php:fpm

fpm version 39.7 MB

```
[PHP Modules]
bcmath
bz2
calendar
cgi-fcgi
Core
ctype
curl
date
dom
exif
fileinfo
filter
ftp
gd
hash
iconv
json
libxml
mbstring
mcrypt
memcached
mysqli
mysqlnd
openssl
pcntl
pcre
PDO
pdo_mysql
pdo_sqlite
Phar
posix
redis
Reflection
session
SimpleXML
sockets
SPL
sqlite3
standard
tokenizer
xml
xmlreader
xmlwriter
xsl
Zend OPcache
zip

[Zend Modules]
Zend OPcache

```


## compile


use `sh make.sh` to build a cli and fpm version


full version contains `redis`,`memcached` and enable opcache

## dockerfile

https://github.com/suconghou/docker/tree/master/php


