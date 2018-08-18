## bftpd

http://bftpd.sourceforge.net/

version 4.9


run without config file (use default settings) `bftpd -n -D`, default port is 21

config file
```
global{
	PORT="8855"
	LOGFILE="/tmp/1.log"
	ROOTDIR="/tmp/"
}
```


## vsftpd

https://security.appspot.com/vsftpd.html#download

version 3.0.3

static build vsftpd on debian9


## dockerfile

https://github.com/suconghou/docker/tree/master/ftp


docker image  https://hub.docker.com/r/suconghou/ftp/

