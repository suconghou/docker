## nginx

very tiny nginx from alpine,only 6.2MB

nginx version 1.11.8

## Usage

```
FROM suconghou/nginx
ADD . .
RUN cp nginx.conf /etc/nginx/nginx.conf
EXPOSE 80 443
CMD ["nginx", "-g", "daemon off;"]
```


## Dockerfile

https://github.com/suconghou/docker/tree/master/nginx

Docker image https://hub.docker.com/r/suconghou/nginx/
