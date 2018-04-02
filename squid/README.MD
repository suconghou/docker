## squid



tiny example conf 
```
http_port 127.0.0.1:3128
http_access allow localhost
cache deny all
access_log none
dns_v4_first on
via off
forwarded_for delete
sslproxy_cert_error allow all
sslproxy_flags DONT_VERIFY_PEER
```

start `squid -f /path/to/config -N`



```
icon_directory /usr/local/squid/share/icons
```




## dockerfile

https://github.com/suconghou/docker/tree/master/squid


docker image  https://hub.docker.com/r/suconghou/squid/


