FROM alpine
RUN wget https://github.com/baulk/git-minimal/releases/download/v2.53.0/git-minimal-static-v2.53.0-linux-amd64.tar.xz && \
tar Jxvf git-minimal-static-v2.53.0-linux-amd64.tar.xz -C /usr/local/ --strip 1 && rm -f git-minimal-static-v2.53.0-linux-amd64.tar.xz

# 也包含一个静态编译的curl
# 参考 https://v2ex.com/t/1184751
