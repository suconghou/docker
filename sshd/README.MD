### sshd

静态编译sshd


### 编译dropbear

dropbear 是一个更加小巧的sshd

https://matt.ucc.asn.au/dropbear/dropbear.html

静态编译十分容易

`mkdir /etc/dropbear`

后台运行 `./dropbear  -E -R`

不进入后台 `./dropbear -F -E -R`


`dbclient` 是一个和ssh类似的客户端

### docker images 

https://hub.docker.com/r/suconghou/sshd/

### dockerfile 

https://github.com/suconghou/docker/tree/master/sshd