FROM alpine
MAINTAINER suconghou
ADD nginx.tar.gz /
RUN ln -sf /dev/stdout /var/log/nginx/access.log && ln -sf /dev/stderr /var/log/nginx/error.log
WORKDIR /etc/nginx
EXPOSE 80 443
