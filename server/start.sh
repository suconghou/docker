#!/bin/sh
/usr/local/bin/sshd
php-fpm
memcached -d -u nobody -p 11211 -m 4 -P /var/run/memcached/memcached.pid
nginx
redis-server
