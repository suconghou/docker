FROM ubuntu

RUN apt install yasm nasm


RUN PREFIX="/tmp/linux" SRC="/tmp/src" && \ 
PKG_CONFIG_PATH="${PREFIX}/lib/pkgconfig" && \
# url start
BZIP2_URL=https://sourceware.org/pub/bzip2/bzip2-1.0.8.tar.gz && \
ZLIB_URL=http://zlib.net/zlib-1.2.11.tar.xz && \
XZ_URL=https://tukaani.org/xz/xz-5.2.5.tar.xz && \
X264_URL=http://download.videolan.org/pub/videolan/x264/snapshots/x264-snapshot-20191217-2245.tar.bz2 && \
OPUS_URL=https://archive.mozilla.org/pub/opus/opus-1.3.1.tar.gz && \
WEBP_URL=http://storage.googleapis.com/downloads.webmproject.org/releases/webp/libwebp-1.2.2.tar.gz && \
VPX_URL=https://github.com/webmproject/libvpx/archive/refs/tags/v1.11.0.tar.gz && \
FFMPEG_URL=http://ffmpeg.org/releases/ffmpeg-5.0.tar.xz && \
# url end
mkdir -p $PREFIX $SRC && \
# bzip2
rm -rf $SRC/bzip2 && mkdir $SRC/bzip2 && \
wget -O- $BZIP2_URL | tar xz --strip 1 -C $SRC/bzip2 && \
cd $SRC/bzip2 && \
make -j4 && make install PREFIX=$PREFIX && \
# zlib
rm -rf $SRC/zlib && mkdir $SRC/zlib && \
wget -O- $ZLIB_URL | tar xJ --strip 1 -C $SRC/zlib && \
cd $SRC/zlib && \
./configure --prefix=$PREFIX --static && \
make -j4 && make install && \
#lzma
rm -rf $SRC/xz && mkdir $SRC/xz && \
wget -O- $XZ_URL | tar xJ --strip 1 -C $SRC/xz && \
cd $SRC/xz && \
./configure --prefix=$PREFIX --enable-static --enable-shared=no && \
make -j4 && make install && \
# x264
rm -rf $SRC/x264 && mkdir $SRC/x264 && \
wget -O- $X264_URL | tar xj --strip 1 -C $SRC/x264 && \
cd $SRC/x264 && \
./configure --prefix=$PREFIX --enable-static --enable-pic --disable-cli && \
make -j4 && make install && \
# opus
rm -rf $SRC/opus && mkdir $SRC/opus && \
wget -O- $OPUS_URL | tar xz --strip 1 -C $SRC/opus && \
cd $SRC/opus && \
./configure --prefix=$PREFIX --enable-shared=no && \
make -j4 && make install && \
# vpx
rm -rf $SRC/vpx && mkdir $SRC/vpx && \
wget -O- $VPX_URL | tar xz --strip 1 -C $SRC/vpx && \
cd $SRC/vpx && \
./configure --prefix=$PREFIX --enable-vp8 --enable-vp9 --enable-vp9-highbitdepth --enable-pic --disable-debug --disable-examples --disable-docs --disable-install-bins && \
make -j4 && make install && \
# webp
rm -rf $SRC/webp && mkdir $SRC/webp && \
wget -O- $WEBP_URL | tar xz --strip 1 -C $SRC/webp && \
cd $SRC/webp && \
./configure --prefix=$PREFIX --enable-shared=no && \
make -j4 && make install && \
# ffmpeg
rm -rf $SRC/ffmpeg && mkdir $SRC/ffmpeg && \
wget -O- $FFMPEG_URL | tar xJ --strip 1 -C $SRC/ffmpeg && \
cd $SRC/ffmpeg && \
./configure --prefix=$PREFIX --extra-cflags="-I${PREFIX}/include" --extra-ldflags="-L${PREFIX}/lib" \
--extra-libs=-lm \
--disable-doc --disable-programs --enable-nonfree --enable-gpl \
--enable-libopus --enable-libx264 --enable-libvpx --enable-libwebp && \
make -j4 && make install

