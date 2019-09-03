

```
docker run --rm -it -v /data/web:/www suconghou/civetweb civetweb -document_root /www
```

`/etc/systemd/system/civetweb.service`
```
[Unit]
Description=civetweb service
After=network.target network-online.target

[Service]
Restart=on-failure
TimeoutStartSec=0
ExecStart=/usr/local/bin/civetweb -document_root /data/www/lua -enable_directory_listing no -cgi_timeout_ms 5000 -error_log_file /dev/stderr

[Install]
WantedBy=multi-user.target
```
`sudo systemctl daemon-reload`
`sudo systemctl enable civetweb`
`sudo systemctl start civetweb`
