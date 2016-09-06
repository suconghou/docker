## GO HTTP SERVER
a tiny go http server in docker
server running on port 8080
use go 1.7 compile
```
GO_ENABLED=0 GOOS=linux GOARCH=amd64 go build  -a -ldflags  "-s" http.go
```

## Dockerfile

https://github.com/suconghou/docker/tree/master/http

Docker image https://hub.docker.com/r/suconghou/http/
