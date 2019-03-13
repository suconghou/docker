FROM suconghou/sshd AS sshd
FROM suconghou/nginx AS nginx
FROM suconghou/php AS php


FROM alpine
LABEL maintainer="suconghou@gmail.com"
COPY --from=sshd /usr/local/bin/ssh-keygen /usr/local/bin/ssh-keygen
COPY --from=sshd /usr/local/sbin/sshd /usr/local/sbin/sshd
COPY --from=nginx /usr/local/sbin/nginx /usr/local/sbin/nginx
COPY --from=nginx /etc/nginx /etc/nginx
COPY --from=php /usr/local/bin/php /usr/local/bin/php
COPY --from=php /usr/local/sbin/php-fpm /usr/local/sbin/php-fpm
COPY --from=php /usr/local/etc/php-fpm.conf /usr/local/etc/php-fpm.conf
COPY --from=php /usr/local/etc/php-fpm.d/ /usr/local/etc/php-fpm.d/
COPY --from=php /etc/php.ini /etc/php.ini

RUN mkdir -p /usr/local/etc/ /var/log/php-fpm /var/log/nginx && \
ln -sf /dev/stdout /var/log/nginx/access.log && \
ln -sf /dev/stderr /var/log/nginx/error.log && \
echo 'PermitRootLogin  yes' > /usr/local/etc/sshd_config && \
ssh-keygen -t dsa -f /usr/local/etc/ssh_host_dsa_key -N '' && \
ssh-keygen -t rsa -f /usr/local/etc/ssh_host_rsa_key -N '' && \
ssh-keygen -t ecdsa -f /usr/local/etc/ssh_host_ecdsa_key -N '' && \
ssh-keygen -t ed25519 -f /usr/local/etc/ssh_host_ed25519_key -N '' && \
echo "root:sch@dockerssh" | chpasswd && \
sed -i '/^;session.save_path.*/csession.save_path = "/dev/shm"' /etc/php.ini
COPY nginx.conf /etc/nginx/nginx.conf
CMD ["sh","-c","/usr/local/sbin/sshd && php-fpm && nginx -g 'daemon off;'"]
EXPOSE 22 80
