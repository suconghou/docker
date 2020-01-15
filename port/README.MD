

portmapper 不支持域名形式的参数

tcpfwd/udpfwd 支持域名形式参数

socat 支持unix socket转换形式


示例:不修改docker配置, 将docker daemon的 unix socket 以端口的形式暴露出来
```
docker run --rm -p 2367:2367 -v /var/run/docker.sock:/docker.sock suconghou/port:socat TCP-LISTEN:2367,reuseaddr,fork UNIX-CLIENT:/docker.sock
```

后台运行12367端口
```

docker run -d \
-p 12367:12367 \
-v /var/run/docker.sock:/docker.sock \
-m 20m \
--restart always \
suconghou/port:socat TCP-LISTEN:12367,reuseaddr,fork UNIX-CLIENT:/docker.sock
```



socat 文件来源于 https://github.com/ernw/static-toolbox , 其工程还提供 ncat , nmap, nping 等静态编译后的可执行文件

https://github.com/andrew-d/static-binaries/tree/master/binaries/linux/x86_64 旧版本静态编译 socat 仅300KB+

redir 仅支持TCP

teeproxy

https://github.com/kklis/proxy


`proxy -l 9077 -h 61.135.169.125 -p 80 -f -i "tee /dev/stderr " -o "tee /dev/stderr"`


## rinetd

https://github.com/samhocevar/rinetd

rinetd并没有使用epoll，而是用了select，高负载下将消耗较多CPU。

## docker images

https://hub.docker.com/r/suconghou/port/

## dockerfile

https://github.com/suconghou/docker/tree/master/port
