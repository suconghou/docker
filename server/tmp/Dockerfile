FROM suconghou/sshd:dropbear AS build
RUN /usr/local/sbin/dropbear -V && \
wget -O- https://github.com/fatedier/frp/releases/download/v0.19.1/frp_0.19.1_linux_amd64.tar.gz | tar xz --strip 1

FROM alpine
LABEL maintainer="suconghou@gmail.com"
COPY --from=build /usr/local/sbin/dropbear /frpc /usr/local/bin/
RUN mkdir -p /etc/dropbear && echo "root:sch" | chpasswd
ONBUILD RUN /usr/local/bin/dropbear -E -R && \
frpc stcp -s 67.215.245.160:7000 -n p2p_ssh --sk abcdefg -l 22
