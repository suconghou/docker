FROM centos:7 AS build
RUN yum -y groupinstall "Development tools"
RUN yum -y install gcc gcc-c++ wget zlib zlib-devel libffi libffi-devel readline-devel bzip2-devel tk-devel sqlite-devel xz-devel gdbm-devel db4-devel
RUN wget --no-check-certificate -O- https://www.openssl.org/source/openssl-1.1.1t.tar.gz | tar xz && cd openssl-1.1.1t && \
./config --prefix=/usr/local/openssl-1.1.1 && make -j4 && make install
RUN wget --no-check-certificate -O- https://www.python.org/ftp/python/3.10.10/Python-3.10.10.tar.xz | tar xJ && \
cd Python-3.10.10 && ls -lha
RUN LDFLAGS="${LDFLAGS} -Wl,-rpath=/usr/local/openssl-1.1.1/lib" ./configure --prefix=/opt/python3 --enable-optimizations --with-lto --disable-shared --with-openssl=/usr/local/openssl-1.1.1 && \
make -j4


