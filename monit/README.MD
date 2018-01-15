## monit

https://mmonit.com/monit/

version 5.25.1

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
