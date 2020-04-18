# docker-speedtest
[Speedtest by Ookla](https://www.speedtest.net/)で回線速度測定を行うDockerイメージです。

## イメージ内容
|ベースイメージ|ubuntu:18.04|
|:-:|:-:|
|エントリポイント|`speedtest --accept-license`|

## ビルド
インストールキーを指定する場合は`--build-args`で`INSTALL_KEY="YOUR_INSTALL_KEY_HERE"`で指定できます。

```shell
$ docker build -t kthksgy/speedtest:latest .
```

## 実行
`--rm`オプションを付けて実行すると実行後にコンテナが破棄されて便利です。末尾に`-h`オプションを付けると`speedtest`自体のヘルプを参照できます。

```shell
$ docker run --rm kthksgy/speedtest:latest
```

## 参考文献
- [Speedtest by Ookla](https://www.speedtest.net/)
- [SPEEDTEST® CLI](https://www.speedtest.net/ja/apps/cli)