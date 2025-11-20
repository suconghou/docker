build ffmpeg static libs for development



--------------------
Building ffmpeg
--------------------

install prefix            /root/lilliput/deps/linux/amd64
source path               /root/lilliput/deps/ffmpeg
C compiler                gcc
C library                 glibc
ARCH                      x86 (generic)
big-endian                no
runtime cpu detection     yes
standalone assembly       yes
x86 assembler             nasm
MMX enabled               yes
MMXEXT enabled            yes
3DNow! enabled            yes
3DNow! extended enabled   yes
SSE enabled               yes
SSSE3 enabled             yes
AESNI enabled             yes
AVX enabled               yes
AVX2 enabled              yes
AVX-512 enabled           yes
AVX-512ICL enabled        yes
XOP enabled               yes
FMA3 enabled              yes
FMA4 enabled              yes
i686 features enabled     yes
CMOV is fast              yes
EBX available             yes
EBP available             yes
debug symbols             yes
strip symbols             yes
optimize for size         no
optimizations             yes
static                    yes
shared                    no
postprocessing support    no
network support           yes
threading support         pthreads
safe bitstream reader     yes
texi2html enabled         no
perl enabled              yes
pod2man enabled           yes
makeinfo enabled          no
makeinfo supports HTML    no
xmllint enabled           no

External libraries:
bzlib                   lzma                    openssl                 zlib

External libraries providing hardware acceleration:
v4l2_m2m

Libraries:
avcodec                 avdevice                avfilter                avformat                avutil                  swresample              swscale

Programs:

Enabled decoders:
aac                     h263                    hevc                    mpeg4                   vp8
flac                    h264                    mp3                     vorbis                  vp9

Enabled encoders:
mjpeg

Enabled hwaccels:

Enabled parsers:
ac3                     flac                    h263                    mpeg4video              mpegaudio               vp9

Enabled demuxers:
aac                     flac                    hls                     mov                     mpegtsraw
ac3                     flv                     m4v                     mp3                     ogg
eac3                    h264                    matroska                mpegts                  wav

Enabled muxers:
mjpeg

Enabled protocols:
cache                   fd                      hls                     pipe                    rtmpt                   subfile                 udp
concat                  ffrtmpcrypt             http                    rtmp                    rtmpte                  tcp                     udplite
concatf                 ffrtmphttp              httpproxy               rtmpe                   rtmpts                  tee                     unix
data                    file                    https                   rtmps                   rtp                     tls

Enabled filters:

Enabled bsfs:
vp9_superframe_split

Enabled indevs:

Enabled outdevs:

License: LGPL version 2.1 or later