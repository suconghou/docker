## monit

https://mmonit.com/monit/

version 5.25.2

example config file

`/etc/monitrc`
```
set daemon  30
set log /var/log/monit.log
set httpd unixsocket /var/run/monit.sock allow user:pass

check process crond with matching crond
start program = "/usr/local/bin/crond" with timeout 10 seconds
stop program = "/usr/local/bin/busybox killall crond" with timeout 10 seconds

check process redis-server with pidfile /var/run/redis-server.pid
start program = "/usr/local/bin/redis-server /etc/redis.conf"
stop  program = "/usr/local/bin/busybox killall redis-server"
if failed port 6379 then restart

```

### tags

run `monit -V` see build config

`monit:latest`

```
This is Monit version 5.25.2
Built with ssl, with ipv6, with compression, without pam and with large files
Copyright (C) 2001-2018 Tildeslash Ltd. All Rights Reserved.
```


`monit:slim` is the slim version without largefile and ssl support , only 770KB+

```
This is Monit version 5.25.2
Built without ssl, without ipv6, with compression, without pam and without large files
Copyright (C) 2001-2018 Tildeslash Ltd. All Rights Reserved.
```

## dockerfile

https://github.com/suconghou/docker/tree/master/monit


docker image  https://hub.docker.com/r/suconghou/monit/

