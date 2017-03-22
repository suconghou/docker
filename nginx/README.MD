## nginx

very tiny nginx from alpine,only 8.04MB

nginx version 1.11.11

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
