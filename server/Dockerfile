FROM alpine
MAINTAINER suconghou
ADD php.tar.gz /
ADD memcached.tar.gz /
ADD nginx.tar.gz /
ADD redis.tar.gz /
ADD ssh.tar.gz /
ADD nginx.conf /etc/nginx/
RUN ln -sf /dev/stdout /var/log/nginx/access.log && ln -sf /dev/stderr /var/log/nginx/error.log
COPY start.sh /start.sh
RUN mkdir -p /usr/local/etc/ && echo 'PermitRootLogin  yes' > /usr/local/etc/sshd_config && ssh-keygen -t dsa -f /usr/local/etc/ssh_host_dsa_key -N '' && ssh-keygen -t rsa -f /usr/local/etc/ssh_host_rsa_key -N '' && ssh-keygen -t ecdsa -f /usr/local/etc/ssh_host_ecdsa_key -N '' && ssh-keygen -t ed25519 -f /usr/local/etc/ssh_host_ed25519_key -N '' && echo "root:123456" | chpasswd
CMD ["/start.sh"]
EXPOSE 80 22
