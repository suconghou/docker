FROM suconghou/sshd AS sshd
FROM suconghou/memcached AS memcached
FROM suconghou/redis AS redis
FROM suconghou/nginx AS nginx
FROM suconghou/php AS php


FROM alpine
MAINTAINER suconghou
COPY --from=sshd /usr/local/bin/ssh-keygen /usr/local/bin/ssh-keygen
COPY --from=sshd /usr/local/sbin/sshd /usr/local/sbin/sshd
COPY --from=memcached /usr/local/bin/memcached /usr/local/bin/memcached
COPY --from=redis /usr/local/bin/redis-server /usr/local/bin/redis-server
COPY --from=redis /etc/redis.conf /etc/redis.conf
COPY --from=nginx /usr/local/sbin/nginx /usr/local/sbin/nginx
COPY --from=nginx /etc/nginx /etc/nginx
COPY --from=nginx /var/log/nginx /var/log/nginx
COPY --from=nginx /var/run /var/run
COPY --from=php /usr/local/bin/php /usr/local/bin/php
COPY --from=php /usr/local/sbin/php-fpm /usr/local/sbin/php-fpm
COPY --from=php /usr/local/etc/php-fpm.conf /usr/local/etc/php-fpm.conf
COPY --from=php /usr/local/etc/php-fpm.d/ /usr/local/etc/php-fpm.d/
COPY --from=php /etc/php.ini /etc/php.ini
COPY --from=php /var/log/php-fpm /var/log/php-fpm

RUN ln -sf /dev/stdout /var/log/nginx/access.log && ln -sf /dev/stderr /var/log/nginx/error.log && mkdir -p /usr/local/etc/ && echo 'PermitRootLogin  yes' > /usr/local/etc/sshd_config && ssh-keygen -t dsa -f /usr/local/etc/ssh_host_dsa_key -N '' && ssh-keygen -t rsa -f /usr/local/etc/ssh_host_rsa_key -N '' && ssh-keygen -t ecdsa -f /usr/local/etc/ssh_host_ecdsa_key -N '' && ssh-keygen -t ed25519 -f /usr/local/etc/ssh_host_ed25519_key -N '' && echo "root:sch@dockerssh" | chpasswd
COPY nginx.conf /etc/nginx/nginx.conf
COPY start.sh /start.sh
CMD ["/start.sh"]
EXPOSE 22 80 6379 9000 11211
