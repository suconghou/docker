## PHP

based on alpine

version php7.1.15


## Usage

```
docker run --rm -it suconghou/php sh
```


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


