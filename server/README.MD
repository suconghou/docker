## Server

include `nginx`,`php-fpm`, and `sshd`


`docker run -d --name dev --restart always -m 100m --log-opt max-size=2m -v /data/share/runtime/:/www -p 18001:80 -p 12201:22 suconghou/server:dev`


可以使用`/data/share/runtime/:/www:ro`使用只读


```
worker_processes  1;
events {
    worker_connections  1024;
}
http {
    include       mime.types;
    default_type  application/octet-stream;
    sendfile        on;
    tcp_nopush      on;
    gzip            on;
    ssi             on;
    keepalive_timeout  65;
    fastcgi_connect_timeout 60s;
    fastcgi_send_timeout 60s;
    fastcgi_read_timeout 60s;
    client_max_body_size 50m;
    server {
        listen  80;
        server_name 0.0.0.0;
        index index.html index.php;	
        if ($host ~* ^(([\w\-]+)\.share\.ourwill\.cn)$) {
            set $subdomain $2;
        }
        root /www/$subdomain;
        if ( !-d $document_root ){
            return 404;
        }
        location / {
            try_files $uri $uri/ /index.php$is_args$args;
        }
        location ~ [^/]\.php(/|$)  {
            try_files $uri =404;
            fastcgi_pass  127.0.0.1:9000;
            fastcgi_param debug 2;
            include        fastcgi.conf;
        }
    }
}
```


## service

mysql redis memcached sshd 185.1MB

`docker build -t=suconghou/server:service -f service .`

start the service

```
docker run -d --name service --restart always -m 360m --log-opt max-size=2m -v service-data:/var/lib/mysql -p 2222:22 -p 443:443 -p 3306:3306 -p 6379:6379  -p 11211:11211 suconghou/server:service
```

```
docker run -d --name service --restart always -m 360m --log-opt max-size=2m -p 2222:22 -p 1443:443 -p 3306:3306 -p 6379:6379 -p 11211:11211 suconghou/server:service
```

you can login from ssh use user `root` password `123456`

and mysql root password is 123456



```
use mysql;
UPDATE user SET password=PASSWORD("123456") WHERE user='root';
FLUSH PRIVILEGES;
```

memcached/redis/sshd/










