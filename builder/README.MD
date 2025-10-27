ubuntu（24.04.2） 安装后的g++是 13.3.0

debian（12.2.0）  安装后的g++是 12.2.0


nimlang/nim:2.2.4-alpine 里的 g++ (Alpine 14.2.0) 14.2.0


docker build -t=suconghou/build_env:ubuntu . -f Dockerfile

docker build -t=suconghou/build_env:debian . -f Dockerfile-debian


