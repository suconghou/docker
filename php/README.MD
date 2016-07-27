## PHP

based on alpine

version php7.0.9


## Usage

```
docker run --rm -it suconghou/phptiny sh
```


## php

common version 36.8MB

https://hub.docker.com/r/suconghou/php/

tiny version only 10.24MB

https://hub.docker.com/r/suconghou/phptiny/



## compile

use `sh maketiny.sh` to build a tiny version

use `sh makefull.sh` to build a full version

use `sh make.sh` to build a common  version

full version contains `swoole`,`redis`,`memcached`,`yac`,`libevent`

## dockerfile

https://github.com/suconghou/docker/tree/master/php


