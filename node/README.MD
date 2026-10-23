## nodejs

静态编译 node,基于 alpine,当前为最新 LTS `24.22.1` (Krypton)

参考 https://github.com/nodejs/docker-node/blob/main/24/alpine3.24/Dockerfile

单核编译可能需要2个小时,请谨慎处理.

可以使用下面的命令限制编译时最多使用50%的CPU
```
docker build -t=suconghou/node -t=suconghou/node:24.22.1 --cpu-period=100000 --cpu-quota=50000 .
```

alpine源里的nodejs可由`apk search nodejs`查看

## tags

| 文件 | tag | 说明 |
| --- | --- | --- |
| `Dockerfile` | `latest` `24.22.1` | 静态编译的 node + openssl-cli |
| `Dockerfile-arm32v7` | `24.22.1` | arm32v7 版本 |
| `Dockerfile-arm64v8` | `24.22.1` | arm64v8 版本 |
| `Dockerfile-yarn` | `yarn` | 在 `latest` 基础上加 yarn `1.22.22` |
| `Dockerfile-pnpm` | `pnpm` | 在 `yarn` 基础上加 pnpm `12.15.0` |

镜像里只有 node 二进制,没有 npm,需要包管理器请用 `yarn` / `pnpm` 标签
