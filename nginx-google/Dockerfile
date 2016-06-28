FROM alpine
MAINTAINER suconghou
ADD nginx.tar.gz /
ADD nginx.conf /etc/nginx/
RUN ln -sf /dev/stdout /var/log/nginx/access.log && ln -sf /dev/stderr /var/log/nginx/error.log
EXPOSE 80 443
