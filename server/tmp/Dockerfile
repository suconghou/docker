FROM suconghou/sshd:dropbear AS build
RUN /usr/local/sbin/dropbear -V && \
wget -O- https://github.com/fatedier/frp/releases/download/v0.19.1/frp_0.19.1_linux_amd64.tar.gz | tar xz --strip 1

FROM alpine
LABEL maintainer="suconghou@gmail.com"
COPY --from=build /usr/local/sbin/dropbear /frpc /usr/local/bin/
RUN mkdir -p /etc/dropbear && echo "root:sch" | chpasswd
ONBUILD RUN /usr/local/bin/dropbear -E -R && \
frpc stcp -s x.x.x.x:7000 --server_name p2p_ssh --sk abcdefg --bind_addr 127.0.0.1 --bind_port 22
