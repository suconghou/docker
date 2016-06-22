FROM busybox
MAINTAINER suconghou
RUN mkdir -p /usr/local/nginx 
ADD nginx /usr/local/nginx/
ADD lib64.tar.xz /
RUN mv /usr/local/nginx/sbin/nginx  /usr/sbin/ 

