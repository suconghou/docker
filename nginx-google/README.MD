## nginx-google

**a very tiny nginx container with google proxy**

It is very small only 5.9MB with google proxy

its nginx version is 1.11.1

## Usage

```
docker run -d --name nginx -p 6060:80 --restart always -m 60m suconghou/nginx-google nginx -g 'daemon off;'

```
or
```
docker run -d --name nginx -p 6060:80 --restart always -m 60m suconghou/nginx-google /bin/sh -c "nginx ;while true ; do sleep 60 ;done "
```
or
```
docker run -it --name nginx -p 6060:80 --restart always -m 60m suconghou/nginx-google sh
```
and then just start nginx in the shell and CTRL+P+Q to leave the container.

You can also use your nginx to proxy the port 6060
```
server{
        listen 80;
        server_name example.com;
        gzip on;
        gzip_proxied any;
        gzip_min_length 1024;
        gzip_comp_level 3;
        gzip_types text/plain text/javascript text/css text/json application/javascript  application/json image/jpeg image/gif image/png;
        location / {
                proxy_pass http://127.0.0.1:6060;
                proxy_set_header Host $host;
                proxy_set_header X-Forwarded-Ssl off;
                proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
                proxy_set_header X-Forwarded-Port 80;
        }
}

```

see https://hub.docker.com/r/suconghou/nginx-google/

dockerfile https://github.com/suconghou/docker/tree/master/nginx-google

