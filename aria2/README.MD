## aria2

https://aria2.github.io/manual/en/html/aria2c.html#aria2-conf

**config**

```

#等号后面内容为默认设置，如为空则无默认设置，请自行选取需要更改的添加到你的配置文件中
 
#下载路径
dir=
 
#日志文件
#日志文件的路径. 如果设置为 "-", 日志则写入到 stdout. 如果设置为空字符串(""), 日志将不会记录到磁盘上.
log=
 
#最大同时下载数
max-concurrent-downloads=5
 
#检查完整性
#通过对文件的每个分块或整个文件进行哈希验证来检查文件的完整性. 此选项仅对BT、Metalink及设置了 --checksum 选项的 HTTP(S)/FTP 链接生效.
check-integrity=false
 
#断点续传
#继续下载部分完成的文件. 启用此选项可以继续下载从浏览器或其他程序按顺序下载的文件. 此选项目前只支持 HTTP(S)/FTP 下载的文件.
continue=true
 
#代理服务器
#设置所有协议的代理服务器地址. 如果覆盖之前设置的代理服务器, 使用 "" 即可. 您还可以针对特定的协议覆盖此选项, 即使用 --http-proxy, --https-proxy 和 --ftp-proxy 选项. 此设置将会影响所有下载. 代理服务器地址的格式为 [http://][USER:PASSWORD@]HOST[:PORT].
all-proxy=
 
#代理服务器用户名
all-proxy-user=
 
#代理服务器密码
all-proxy-passwd=
 
#连接超时时间
#设置建立 HTTP/FTP/代理服务器 连接的超时时间(秒). 当连接建立后, 此选项不再生效, 请使用 --timeout 选项.
connect-timeout=60
 
#模拟运行
#如果设置为"是", aria2 将仅检查远程文件是否存在而不会下载文件内容. 此选项仅对 HTTP/FTP 下载生效. 如果设置为 true, BT 下载将会直接取消.
dry-run=false
 
#最小速度限制
#当下载速度低于此选项设置的值(B/s) 时将会关闭连接. 0 表示不设置最小速度限制. 您可以增加数值的单位 K 或 M (1K = 1024, 1M = 1024K). 此选项不会影响 BT 下载.
lowest-speed-limit=0
 
#单服务器最大连接数
max-connection-per-server=1
 
#文件未找到重试次数
#如果 aria2 从远程 HTTP/FTP 服务器收到 "文件未找到" 的状态超过此选项设置的次数后下载将会失败. 设置为 0 将会禁用此选项. 此选项仅影响 HTTP/FTP 服务器. 重试时同时会记录重试次数, 所以也需要设置 --max-tries 这个选项.
max-file-not-found=0
 
#最大尝试次数
#设置最大尝试次数. 0 表示不限制.
max-tries=5
 
#最小文件分片大小
#aria2 不会分割小于 2*SIZE 字节的文件. 例如, 文件大小为 20MB, 如果 SIZE 为 10M, aria2 会把文件分成 2 段 [0-10MB) 和 [10MB-20MB), 并且使用 2 个源进行下载 (如果 --split >= 2). 如果 SIZE 为 15M, 由于 2*15M > 20MB, 因此 aria2 不会分割文件并使用 1 个源进行下载. 您可以增加数值的单位 K 或 M (1K = 1024, 1M = 1024K). 可以设置的值为: 1M-1024M.
min-split-size=20M
 
#.netrc 文件路径
netrc-path=$(HOME)/.netrc
 
#禁用 netrc
no-netrc=false
 
#不使用代理服务器列表
#设置不使用代理服务器的主机名, 域名, 包含或不包含子网掩码的网络地址, 多个使用逗号分隔.
no-proxy=
 
#文件名
#下载文件的文件名. 其总是相对于 --dir 选项中设置的路径. 当使用 --force-sequential 参数时此选项无效.
out=
 
#代理服务器请求方法
#设置用来请求代理服务器的方法. 方法可设置为 GET 或 TUNNEL. HTTPS 下载将忽略此选项并总是使用 TUNNEL.
proxy-method=get
 
#获取服务器文件时间
#从 HTTP/FTP 服务获取远程文件的时间戳, 如果可用将设置到本地文件
remote-time=false
 
#URI 复用
#当所有给定的 URI 地址都已使用, 继续使用已经使用过的 URI 地址.
reuse-uri=true
 
#重试等待时间
#设置重试间隔时间(秒). 当此选项的值大于 0 时, aria2 在 HTTP 服务器返回 503 响应时将会重试.
retry-wait=0
 
#服务器状态保存文件
#指定用来保存服务器状态的文件名. 您可以使用 --server-stat-if 参数读取保存的数据.
server-stat-of=
 
#服务器状态超时
#指定服务器状态的过期时间 (单位为秒).
server-stat-timeout=86400
 
#单任务连接数
#下载时使用 N 个连接. 如果提供超过 N 个 URI 地址, 则使用前 N 个地址, 剩余的地址将作为备用. 如果提供的 URI 地址不足 N 个, 这些地址多次使用以保证同时建立 N 个连接. 同一服务器的连接数会被 --max-connection-per-server 选项限制.
split=5
 
#分片选择算法
#指定 HTTP/FTP 下载使用的分片选择算法. 分片表示的是并行下载时固定长度的分隔段. 如果设置为"默认", aria2 将会按减少建立连接数选择分片. 由于建立连接操作的成本较高, 因此这是合理的默认行为. 如果设置为"顺序", aria2 将选择索引最小的分片. 索引为 0 时表示为文件的第一个分片. 这将有助于视频的边下边播. --enable-http-pipelining 选项有助于减少重连接的开销. 请注意, aria2 依赖于 --min-split-size 选项, 所以有必要对 --min-split-size 选项设置一个合理的值. 如果设置为"随机", aria2 将随机选择一个分片. 就像"顺序"一样, 依赖于 --min-split-size 选项. 如果设置为"几何", aria2 会先选择索引最小的分片, 然后会为之前选择的分片保留指数增长的空间. 这将减少建立连接的次数, 同时文件开始部分将会先行下载. 这也有助于视频的边下边播.
stream-piece-selector=default
 
#超时时间
timeout=60
 
#URI 选择算法
#指定 URI 选择的算法. 可选的值包括 "按顺序", "反馈" 和 "自适应". 如果设置为"按顺序", URI 将按列表中出现的顺序使用. 如果设置为"反馈", aria2 将根据之前的下载速度选择 URI 列表中下载速度最快的服务器. 同时也将有效跳过无效镜像. 之前统计的下载速度将作为服务器状态文件的一部分, 参见 --server-stat-of 和 --server-stat-if 选项. 如果设置为"自适应", 将从最好的镜像和保留的连接里选择一项. 补充说明, 其返回的镜像没有被测试过, 同时如果每个镜像都已经被测试过时, 返回的镜像还会被重新测试. 否则, 其将不会选择其他镜像. 例如"反馈", 其使用服务器状态文件.
uri-selector=feedback
 
#检查证书
check-certificate=true
 
#支持 GZip
#如果远程服务器的响应头中包含 Content-Encoding: gzip 或 Content-Encoding: deflate , 将发送包含 Accept: deflate, gzip 的请求头并解压缩响应.
http-accept-gzip=false
 
#认证质询
#仅当服务器需要时才发送 HTTP 认证请求头. 如果设置为"否", 每次都会发送认证请求头. 例外: 如果用户名和密码包含在 URI 中, 将忽略此选项并且每次都会发送认证请求头.
http-auth-challenge=false
 
#禁用缓存
#发送的请求头中将包含 Cache-Control: no-cache 和 Pragma: no-cache header 以避免内容被缓存. 如果设置为"否", 上述请求头将不会发送, 同时您也可以使用 --header 选项将 Cache-Control 请求头添加进去.
http-no-cache=false
 
#HTTP 默认用户名
http-user=
 
#HTTP 默认密码
http-passwd=
 
#HTTP 代理服务器
http-proxy=
 
#HTTP 代理服务器用户名
http-proxy-user=
 
#HTTP 代理服务器密码
http-proxy-passwd=
 
#HTTPS 代理服务器
https-proxy=
 
#HTTPS 代理服务器用户名
https-proxy-user=
 
#HTTPS 代理服务器密码
https-proxy-passwd=
 
#请求来源
#设置 HTTP 请求来源 (Referer). 此选项将影响所有 HTTP/HTTPS 下载. 如果设置为 *, 请求来源将设置为下载链接. 此选项可以配合 --parameterized-uri 选项使用.
referer=
 
#启用持久连接
#启用 HTTP/1.1 持久连接.
enable-http-keep-alive=true
 
#启用 HTTP 管线化
#启用 HTTP/1.1 管线化.
enable-http-pipelining=false
 
#自定义请求头
#增加 HTTP 请求头内容.
header=
 
#Cookies 保存路径
#以 Mozilla/Firefox(1.x/2.x)/Netscape 格式将 Cookies 保存到文件中. 如果文件已经存在, 将被覆盖. 会话过期的 Cookies 也将会保存, 其过期时间将会设置为 0.
save-cookies=
 
#启用 HEAD 方法
#第一次请求 HTTP 服务器时使用 HEAD 方法.
use-head=false
 
#自定义 User Agent
user-agent=aria2/$VERSION
 
#FTP 默认用户名
ftp-user=anonymous
 
#FTP 默认密码
#如果 URI 中包含用户名单不包含密码, aria2 首先会从 .netrc 文件中获取密码. 如果在 .netrc 文件中找到密码, 则使用该密码. 否则, 使用此选项设置的密码.
ftp-passwd=ARIA2USER@
 
#被动模式
#在 FTP 中使用被动模式. 如果设置为"否", 则使用主动模式. 此选项不适用于 SFTP 传输.
ftp-pasv=true
 
#FTP 代理服务器
ftp-proxy=
 
#FTP 代理服务器用户名
ftp-proxy-user=
 
#FTP 代理服务器密码
ftp-proxy-passwd=
 
#传输类型
ftp-type=binary
 
#连接复用
ftp-reuse-connection=true
 
#SSH 公钥校验和
#设置 SSH 主机公钥的校验和. TYPE 为哈希类型. 支持的哈希类型为 sha-1 和 md5. DIGEST 是十六进制摘要. 例如: sha-1=b030503d4de4539dc7885e6f0f5e256704edf4c3. 此选项可以在使用 SFTP 时用来验证服务器的公钥. 如果此选项不设置, 即保留默认, 不会进行任何验证。
ssh-host-key-md=
 
#分离仅做种任务
#统计当前活动下载任务(参见 -j 选项) 时排除仅做种的任务. 这意味着, 如果参数设置为 -j3, 此选项打开并且当前有 3 个正在活动的任务, 并且其中有 1 个进入做种模式, 那么其会从正在下载的数量中排除(即数量会变为 2), 在队列中等待的下一个任务将会开始执行. 但要知道, 在 RPC 方法中, 做种的任务仍然被认为是活动的下载任务.
bt-detach-seed-only=false
 
#启用哈希检查完成事件
#允许 BT 下载哈希检查(参见 -V 选项) 完成后调用命令. 默认情况下, 当哈希检查成功后, 通过 --on-bt-download-complete 设置的命令将会被执行. 如果要禁用此行为, 请设置为"否".
bt-enable-hook-after-hash-check=true
 
#启用本地节点发现  (LPD)
bt-enable-lpd=false
 
#BT 排除服务器地址
#逗号分隔的 BT 排除服务器地址. 您可以使用 * 匹配所有地址, 因此将排除所有服务器地址. 当在 shell 命令行使用 * 时, 需要使用转义符或引号.
bt-exclude-tracker=
 
#外部 IP 地址
#指定用在 BitTorrent 下载和 DHT 中的外部 IP 地址. 它可能被发送到 BitTorrent 服务器. 对于 DHT, 此选项将会报告本地节点正在下载特定的种子. 这对于在私有网络中使用 DHT 非常关键. 虽然这个方法叫外部, 但其可以接受各种类型的 IP 地址.
bt-external-ip=
 
#强制加密
#BT 消息中的内容需要使用 arc4 加密. 此选项是设置 --bt-require-crypto --bt-min-crypto-level=arc4 这两个选项的快捷方式. 此选项不会修改上述两个选项的内容. 如果设置为"是", 将拒绝以前的 BT 握手, 并仅使用模糊握手及加密消息.
bt-force-encryption=false
 
#做种前检查文件哈希
#如果设置为"是", 当使用 --check-integrity 选项完成哈希检查及文件完成后才继续做种. 如果您希望仅当文件损坏或未完成时检查文件, 请设置为"否". 此选项仅对 BT 下载有效
bt-hash-check-seed=true
 
#加载已保存的元数据文件
#当使用磁链下载时, 在从 DHT 获取种子元数据之前, 首先尝试加载使用 --bt-save-metadata 选项保存的文件. 如果文件加载成功, 则不会从 DHT 下载元数据.
bt-load-saved-metadata=false
 
#最多打开文件数
#设置 BT/Metalink 下载全局打开的最大文件数.
bt-max-open-files=100
 
#最大连接节点数
#设置每个 BT 下载的最大连接节点数. 0 表示不限制.
bt-max-peers=55
 
#仅下载种子文件
#仅下载种子文件. 种子文件中描述的文件将不会下载. 此选项仅对磁链生效.
bt-metadata-only=false
 
#最低加密级别
#设置加密方法的最小级别. 如果节点提供多种加密方法, aria2 将选择满足给定级别的最低级别.
bt-min-crypto-level=plain
 
#优先下载
#尝试先下载每个文件开头或结尾的分片. 此选项有助于预览文件. 参数可以包括两个关键词: head 和 tail. 如果包含两个关键词, 需要使用逗号分隔. 每个关键词可以包含一个参数, SIZE. 例如, 如果指定 head=SIZE, 每个文件的最前 SIZE 数据将会获得更高的优先级. tail=SIZE 表示每个文件的最后 SIZE 数据. SIZE 可以包含 K 或 M (1K = 1024, 1M = 1024K).
bt-prioritize-piece=
 
#删除未选择的文件
#当 BT 任务完成后删除未选择的文件. 要选择需要下载的文件, 请使用 --select-file 选项. 如果没有选择, 则所有文件都默认为需要下载. 此选项会从磁盘上直接删除文件, 请谨慎使用此选项.
bt-remove-unselected-file=false
 
#需要加密
#如果设置为"是", aria 将不会接受以前的 BitTorrent 握手协议(\\19BitTorrent 协议)并建立连接. 因此 aria2 总是模糊握手.
bt-require-crypto=false
 
#期望下载速度
#如果一个 BT 下载的整体下载速度低于此选项设置的值, aria2 会临时提高连接数以提高下载速度. 在某些情况下, 设置期望下载速度可以提高您的下载速度. 您可以增加数值的单位 K 或 M (1K = 1024, 1M = 1024K).
bt-request-peer-speed-limit=50K
 
#保存种子文件
#保存种子文件为 ".torrent" 文件. 此选项仅对磁链生效. 文件名为十六进制编码后的哈希值及 ".torrent"后缀. 保存的目录与下载文件的目录相同. 如果相同的文件已存在, 种子文件将不会保存.
bt-save-metadata=false
 
#不检查已经下载的文件
#不检查之前下载文件中每个分片的哈希值.
bt-seed-unverified=false
 
#无速度时自动停止时间
#当 BT 任务F下载速度持续为 0, 达到此选项设置的时间后停止下载. 如果设置为 0, 此功能将禁用.
bt-stop-timeout=0
 
#BT 服务器地址
#逗号分隔的 BT 服务器地址. 如果服务器地址在 --bt-exclude-tracker 选项中, 其将不会生效.
bt-tracker=
 
#BT 服务器连接超时时间
#设置 BT 服务器的连接超时时间 (秒). 当连接建立后, 此选项不再生效, 请使用 --bt-tracker-timeout 选项.
bt-tracker-connect-timeout=60
 
#BT 服务器连接间隔时间
#设置请求 BT 服务器的间隔时间 (秒). 此选项将完全覆盖服务器返回的最小间隔时间和间隔时间, aria2 仅使用此选项的值.如果设置为 0, aria2 将根据服务器的响应情况和下载进程决定时间间隔.
bt-tracker-interval=0
 
#BT 服务器超时时间
bt-tracker-timeout=60
 
#DHT (IPv4) 文件
#修改 IPv4 DHT 路由表文件路径.
dht-file-path=$HOME/.aria2/dht.dat
 
#DHT (IPv6) 文件
#修改 IPv6 DHT 路由表文件路径.
dht-file-path6=$HOME/.aria2/dht6.dat
 
#DHT 监听端口
#设置 DHT (IPv4, IPv6) 和 UDP 服务器使用的 UCP 端口. 多个端口可以使用逗号 "," 分隔, 例如: 6881,6885. 您还可以使用短横线 "-" 表示范围: 6881-6999, 或可以一起使用: 6881-6889, 6999.
dht-listen-port=6881-6999
 
#DHT 消息超时时间
dht-message-timeout=10
 
#启用 DHT (IPv4)
#启用 IPv4 DHT 功能. 此选项同时会启用 UDP 服务器支持. 如果种子设置为私有, 即使此选项设置为"是", aria2 也不会启用 DHT.
enable-dht=true
 
#启用 DHT (IPv6)
#启用 IPv6 DHT 功能. 如果种子设置为私有, 即使此选项设置为"是", aria2 也不会启用 DHT. 使用 --dht-listen-port 选项设置监听的端口.
enable-dht6=
 
#启用节点交换
#启用节点交换扩展. 如果种子设置为私有, 即使此选项设置为"是", aria2 也不会启用此功能.
enable-peer-exchange=true
 
#下载种子中的文件
#如果设置为"是"或"仅内存", 当后缀为 .torrent 或内容类型为 application/x-bittorrent 的文件下载完成时, aria2 将按种子文件读取并下载该文件中提到的文件. 如果设置为"仅内存", 该种子文件将不会写入到磁盘中, 而仅会存储在内存中. 如果设置为"否", 则 .torrent 文件会下载到磁盘中, 但不会按种子文件读取并且其中的文件不会进行下载.
follow-torrent=true
 
#监听端口
#设置 BT 下载的 TCP 端口. 多个端口可以使用逗号 "," 分隔, 例如: 6881,6885. 您还可以使用短横线 "-" 表示范围: 6881-6999, 或可以一起使用: 6881-6889, 6999.
listen-port=6881-6999
 
#全局最大上传速度
#设置全局最大上传速度 (字节/秒). 0 表示不限制. 您可以增加数值的单位 K 或 M (1K = 1024, 1M = 1024K).
max-overall-upload-limit=0
 
#最大上传速度
#设置每个任务的最大上传速度 (字节/秒). 0 表示不限制. 您可以增加数值的单位 K 或 M (1K = 1024, 1M = 1024K).
max-upload-limit=0
 
#节点 ID 前缀
#指定节点 ID 的前缀. BT 中节点 ID 长度为 20 字节. 如果超过 20 字节, 将仅使用前 20 字节. 如果少于 20 字节, 将在其后不足随机的数据保证为 20 字节.
peer-id-prefix=A2-1-33-0-
 
#Peer Agent
#指定 BT 扩展握手期间用于节点客户端版本的字符串.
peer-agent=aria2/1.33.0
 
#最小分享率
#指定分享率. 当分享率达到此选项设置的值时会完成做种. 强烈建议您将此选项设置为大于等于 1.0. 如果您想不限制分享比率, 可以设置为 0.0. 如果同时设置了 --seed-time 选项, 当任意一个条件满足时将停止做种.
seed-ratio=1.0
 
#最小做种时间
#此选项设置为 0 时, 将在 BT 任务下载完成后不进行做种.
seed-time=
 
#下载 Metalink 中的文件
#如果设置为"是"或"仅内存", 当后缀为 .meta4 或 .metalink 或内容类型为 application/metalink4+xml 或 application/metalink+xml 的文件下载完成时, aria2 将按 Metalink 文件读取并下载该文件中提到的文件. 如果设置为"仅内存", 该 Metalink 文件将不会写入到磁盘中, 而仅会存储在内存中. 如果设置为"否", 则 .metalink 文件会下载到磁盘中, 但不会按 Metalink 文件读取并且其中的文件不会进行下载.
follow-metalink=true
 
#基础 URI
#指定基础 URI 以便解析本地磁盘中存储的 Metalink 文件里 metalink:url 和 metalink:metaurl 中的相对 URI 地址. 如果 URI 表示的为目录, 最后需要以 / 结尾.
metalink-base-uri=
 
#语言
metalink-language=
 
#首选服务器位置
#首选服务器所在的位置. 可以使用逗号分隔的列表, 例如: jp,us.
metalink-location=
 
#操作系统
#下载文件的操作系统.
metalink-os=
 
#版本号
#下载文件的版本号.
metalink-version=
 
#首选使用协议
#指定首选使用的协议. 可以设置为 http, https, ftp 或"无". 设置为"无"时禁用此选项.
metalink-preferred-protocol=none
 
#仅使用唯一协议
#如果一个 Metalink 文件可用多种协议, 并且此选项设置为"是", aria2 将只会使用其中一种. 使用 --metalink-preferred-protocol 参数指定首选的协议.
metalink-enable-unique-protocol=true
 
#启用 JSON-RPC/XML-RPC 服务器
enable-rpc=false
 
#种子文件下载完后暂停
#当种子文件下载完成后暂停后续的下载. 在 aria2 中有 3 种种子文件的下载类型: (1) 下载 .torrent 文件. (2) 通过磁链下载的种子文件. (3) 下载 Metalink 文件. 这些种子文件下载完后会根据文件内容继续进行下载. 此选项会暂停这些后续的下载. 此选项仅当 --enable-rpc 选项启用时生效.
pause-metadata=false
 
#接受所有远程请求
#在 RPC 响应头增加 Access-Control-Allow-Origin 字段, 值为 * .
rpc-allow-origin-all=false
 
#在所有网卡上监听
#在所有网络适配器上监听 JSON-RPC/XML-RPC 的请求, 如果设置为"否", 仅监听本地网络的请求.
rpc-listen-all=false
 
#监听端口
rpc-listen-port=6800
 
#最大请求大小
#设置 JSON-RPC/XML-RPC 最大的请求大小. 如果 aria2 检测到请求超过设定的字节数, 会直接取消连接.
rpc-max-request-size=2M
 
#保存上传的种子文件
#在 dir 选项设置的目录中保存上传的种子文件或 Metalink 文件. 文件名包括 SHA-1 哈希后的元数据和扩展名两部分. 对于种子文件, 扩展名为 '.torrent'. 对于 Metalink 为 '.meta4'. 如果此选项设置为"否", 通过 aria2.addTorrent() 或 aria2.addMetalink() 方法添加的下载将无法通过 --save-session 选项保存.
rpc-save-upload-metadata=true
 
#启用 SSL/TLS
#RPC 将通过 SSL/TLS 加密传输. RPC 客户端需要使用 https 协议连接服务器. 对于 WebSocket 客户端, 使用 wss 协议. 使用 --rpc-certificate 和 --rpc-private-key 选项设置服务器的证书和私钥.
rpc-secure=
 
#允许覆盖
#如果相应的控制文件不存在时从头重新下载文件. 参见 --auto-file-renaming 选项.
allow-overwrite=false
 
#允许分片大小变化
#如果设置为"否", 当分片长度与控制文件中的不同时, aria2 将会中止下载. 如果设置为"是", 您可以继续, 但部分下载进度将会丢失.
allow-piece-length-change=false
 
#始终断点续传
#始终断点续传. 如果设置为"是", aria2 始终尝试断点续传, 如果无法恢复, 则中止下载. 如果设置为"否", 对于不支持断点续传的 URI 或 aria2 遇到 N 个不支持断点续传的 URI (N 为 --max-resume-failure-tries 选项设置的值), aria2 会从头下载文件. 参见 --max-resume-failure-tries 参数.
always-resume=true
 
#异步 DNS
async-dns=true
 
#文件自动重命名
#重新命名已经存在的文件. 此选项仅对 HTTP(S)/FTP 下载有效. 新的文件名后会在文件名后、扩展名 (如果有) 前追加句点和数字(1..9999).
auto-file-renaming=true
 
#自动保存间隔
#每隔设置的秒数自动保存控制文件(*.aria2). 如果设置为 0, 下载期间控制文件不会自动保存. 不论设置的值为多少, aria2 会在任务结束时保存控制文件. 可以设置的值为 0 到 600.
auto-save-interval=60
 
#条件下载
#仅当本地文件比远程文件旧时才进行下载. 此功能仅适用于 HTTP(S) 下载. 如果在 Metalink 中文件大小已经被指定则功能无法生效. 同时此功能还将忽略 Content-Disposition 响应头. 如果存在控制文件, 此选项将被忽略. 此功能通过 If-Modified-Since 请求头获取较新的文件. 当获取到本地文件的修改时间时, 此功能将使用用户提供的文件名 (参见 --out 选项), 如果没有指定 --out 选项则使用 URI 中的文件名. 为了覆盖已经存在的文件, 需要使用 --allow-overwrite 参数.
conditional-get=false
 
#配置文件路径
conf-path=$HOME/.aria2/aria2.conf
 
#控制台日志级别
console-log-level=notice
 
#使用 UTF-8 处理 Content-Disposition
#处理 "Content-Disposition" 头中的字符串时使用 UTF-8 字符集来代替 ISO-8859-1, 例如, 文件名参数, 但不是扩展版本的文件名.
content-disposition-default-utf8=
 
#启用后台进程
daemon=false
 
#延迟加载
#如果设置为"是", aria2 在启动时不会读取 --input-file 选项设置的文件中的所有 URI 地址, 而是会在之后需要时按需读取. 如果输入文件中包含大量要下载的 URI, 此选项可以减少内存的使用. 如果设置为"否", aria2 会在启动时读取所有的 URI. 当 -save-session 使用时将会禁用 --deferred-input 选项.
deferred-input=false
 
#禁用 IPv6
disable-ipv6=false
 
#磁盘缓存
#启用磁盘缓存. 如果设置为 0, 将禁用磁盘缓存. 此功能将下载的数据缓存在内存中, 最多占用此选项设置的字节数. 缓存存储由 aria2 实例创建并对所有下载共享. 由于数据以较大的单位写入并按文件的偏移重新排序, 所以磁盘缓存的一个优点是减少磁盘的 I/O. 如果调用哈希检查时并且数据缓存在内存中时, 将不需要从磁盘中读取. 大小可以包含 K 或 M (1K = 1024, 1M = 1024K).
disk-cache=16M
 
#下载结果
#此选项将修改下载结果的格式. 如果设置为"默认", 将打印 GID, 状态, 平均下载速度和路径/URI. 如果涉及多个文件, 仅打印第一个请求文件的路径/URI, 其余的将被忽略. 如果设置为"完整", 将打印 GID, 状态, 平均下载速度, 下载进度和路径/URI. 其中, 下载进度和路径/URI 将会每个文件打印一行. 如果设置为"隐藏", 下载结果将会隐藏.
download-result=default
 
#DSCP
#为 QoS 设置 BT 上行 IP 包的 DSCP 值. 此参数仅设置 IP 包中 TOS 字段的 DSCP 位, 而不是整个字段. 如果您从 /usr/include/netinet/ip.h 得到的值, 需要除以 4 (否则值将不正确, 例如您的 CS1 类将会转为 CS4). 如果您从 RFC, 网络供应商的文档, 维基百科或其他来源采取常用的值, 可以直接使用.
dscp=
 
#最多打开的文件描述符
#设置打开的文件描述符的软限制 (soft limit). 此选项仅当满足如下条件时开放: a. 系统支持它 (posix). b. 限制没有超过硬限制 (hard limit). c. 指定的限制比当前的软限制高. 这相当于设置 ulimit, 除了其不能降低限制. 此选项仅当系统支持 rlimit API 时有效.
rlimit-nofile=
 
#终端输出使用颜色
enable-color=true
 
#启用 MMap
#内存中存放映射文件. 当文件空间没有预先分配至, 此选项无效. 参见 --file-allocation.
enable-mmap=false
 
#事件轮询方法
#设置事件轮训的方法. 可选的值包括 epoll, kqueue, port, poll 和 select. 对于 epoll, kqueue, port 和 poll, 只有系统支持时才可用. 最新的 Linux 支持 epoll. 各种 *BSD 系统包括 Mac OS X 支持 kqueue. Open Solaris 支持 port. 默认值根据您使用的操作系统不同而不同.
event-poll=
 
#文件分配方法
#指定文件分配方法. "无" 不会预先分配文件空间. "prealloc"会在下载开始前预先分配空间. 这将会根据文件的大小需要一定的时间. 如果您使用的是较新的文件系统, 例如 ext4 (带扩展支持), btrfs, xfs 或 NTFS (仅 MinGW 构建), "falloc" 是最好的选择. 其几乎可以瞬间分配大(数 GiB)文件. 不要在旧的文件系统, 例如 ext3 和 FAT32 上使用 falloc, 因为与 prealloc 花费的时间相同, 并且其会阻塞 aria2 知道分配完成. 当您的系统不支持 posix_fallocate(3) 函数时, falloc 可能无法使用. "trunc" 使用 ftruncate(2) 系统调用或平台特定的实现将文件截取到特定的长度. 在多文件的 BitTorrent 下载中, 若某文件与其相邻的文件共享相同的分片时, 则相邻的文件也会被分配.
file-allocation=prealloc
 
#强制保存
#即使任务完成或删除时使用 --save-session 选项时也保存该任务. 此选项在这种情况下还会保存控制文件. 此选项可以保存被认为已经完成但正在做种的 BT 任务.
force-save=false
 
#保存未找到的文件
#当使用 --save-session 选项时, 即使当任务中的文件不存在时也保存该下载任务. 此选项同时会将这种情况保存到控制文件中.
save-not-found=true
 
#仅哈希检查
#如果设置为"是", 哈希检查完使用 --check-integrity 选项, 根据是否下载完成决定是否终止下载.
hash-check-only=false
 
#控制台可读输出
#在控制台输出可读格式的大小和速度 (例如, 1.2Ki, 3.4Mi).
human-readable=true
 
#保留未完成的任务
#保留所有未完成的下载结果, 即使超过了 --max-download-result 选项设置的数量. 这将有助于在会话文件中保存所有的未完成的下载 (参考 --save-session 选项). 需要注意的是, 未完成任务的数量没有上限. 如果不希望这样, 请关闭此选项.
keep-unfinished-download-result=true
 
#最多下载结果
#设置内存中存储最多的下载结果数量. 下载结果包括已完成/错误/已删除的下载. 下载结果存储在一个先进先出的队列中, 因此其可以存储最多指定的下载结果的数量. 当队列已满且有新的下载结果创建时, 最老的下载结果将从队列的最前部移除, 新的将放在最后. 此选项设置较大的值后如果经过几千次的下载将导致较高的内存消耗. 设置为 0 表示不存储下载结果. 注意, 未完成的下载将始终保存在内存中, 不考虑该选项的设置. 参考 --keep-unfinished-download-result 选项.
max-download-result=1000
 
#MMap 最大限制
#设置启用 MMap (参见 --enable-mmap 选项) 最大的文件大小. 文件大小由一个下载任务中所有文件大小的和决定. 例如, 如果一个下载包含 5 个文件, 那么文件大小就是这些文件的总大小. 如果文件大小超过此选项设置的大小时, MMap 将会禁用.
max-mmap-limit=9223372036854775807
 
#最大断点续传尝试次数
#当 --always-resume 选项设置为"否"时, 如果 aria2 检测到有 N 个 URI 不支持断点续传时, 将从头开始下载文件. 如果 N 设置为 0, 当所有 URI 都不支持断点续传时才会从头下载文件. 参见 --always-resume 选项.
max-resume-failure-tries=0
 
#最低 TLS 版本
#指定启用的最低 SSL/TLS 版本.
min-tls-version=TLSv1
 
#日志级别
log-level=debug
 
#优化并发下载
#根据可用带宽优化并发下载的数量. aria2 使用之前统计的下载速度通过规则 N = A + B Log10 (速度单位为 Mbps) 得到并发下载的数量. 其中系数 A 和 B 可以在参数中以冒号分隔自定义. 默认值 (A=5, B=25) 可以在 1Mbps 网络上使用通常 5 个并发下载, 在 100Mbps 网络上为 50 个. 并发下载的数量保持在 --max-concurrent-downloads 参数定义的最大之下.
optimize-concurrent-downloads=false
 
#文件分片大小
#设置 HTTP/FTP 下载的分配大小. aria2 根据这个边界分割文件. 所有的分割都是这个长度的倍数. 此选项不适用于 BitTorrent 下载. 如果 Metalink 文件中包含分片哈希的结果此选项也不适用.
piece-length=1M
 
#显示控制台输出
show-console-readout=true
 
#下载摘要输出间隔
#设置下载进度摘要的输出间隔(秒). 设置为 0 禁止输出.
summary-interval=60
 
#全局最大下载速度
#设置全局最大下载速度 (字节/秒). 0 表示不限制. 您可以增加数值的单位 K 或 M (1K = 1024, 1M = 1024K).
max-overall-download-limit=0
 
#最大下载速度
#设置每个任务的最大下载速度 (字节/秒). 0 表示不限制. 您可以增加数值的单位 K 或 M (1K = 1024, 1M = 1024K).
max-download-limit=0
 
#禁用配置文件
no-conf=
 
#文件分配限制
#不对比此参数设置大小小的分配文件. 您可以增加数值的单位 K 或 M (1K = 1024, 1M = 1024K).
no-file-allocation-limit=5M
 
#启用参数化 URI 支持
#启用参数化 URI 支持. 您可以指定部分的集合: http://{sv1,sv2,sv3}/foo.iso. 同时您也可以使用步进计数器指定数字化的序列: http://host/image[000-100:2].img. 步进计数器可以省略. 如果所有 URI 地址不指向同样的文件, 例如上述第二个示例, 需要使用 -Z 选项.
parameterized-uri=false
 
#禁用控制台输出
quiet=false
 
#实时数据块验证
#如果提供了数据块的校验和, 将在下载过程中通过校验和验证数据块.
realtime-chunk-checksum=true
 
#删除控制文件
#在下载前删除控制文件. 使用 --allow-overwrite=true 选项时, 总是从头开始下载文件. 此选项将有助于使用不支持断点续传代理服务器的用户.
remove-control-file=
 
#状态保存文件
#当退出时保存错误及未完成的任务到指定的文件中. 您可以在重启 aria2 时使用 --input-file 选项重新加载. 如果您希望输出的内容使用 GZip 压缩, 您可以在文件名后增加 .gz 扩展名. 请注意, 通过 aria2.addTorrent() 和 aria2.addMetalink() RPC 方法添加的下载, 其元数据没有保存到文件的将不会保存. 通过 aria2.remove() 和 aria2.forceRemove() 删除的下载将不会保存.
save-session=
 
#保存状态间隔
#每隔此选项设置的时间(秒)后会保存错误或未完成的任务到 --save-session 选项指定的文件中. 如果设置为 0, 仅当 aria2 退出时才会保存.
save-session-interval=0
 
#Socket 接收缓冲区大小
#设置 Socket 接收缓冲区最大的字节数. 指定为 0 时将禁用此选项. 当使用 SO_RCVBUF 选项调用 setsockopt() 时此选项的值将设置到 Socket 的文件描述符中.
socket-recv-buffer-size=0
 
#自动关闭时间
#在此选项设置的时间(秒)后关闭应用. 如果设置为 0, 此功能将禁用.
stop=0
 
#缩短控制台输出内容
#缩短控制台输出的内容在一行中.
truncate-console-readout=true
 
#部分事件hook
#BT下载完成(如有做种将包含做种，如需调用请务必确定设定完成做种条件)
on-bt-download-complete=
#下载完成
on-download-complete=
#下载错误
on-download-error=
#下载暂停
on-download-pause=
#下载开始
on-download-start=
#下载停止
on-download-stop=
```