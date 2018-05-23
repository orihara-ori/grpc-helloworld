# はじめに
コードを書く必要はなく、gRPC で `hello` と表示する環境をdockerを利用して準備しました

# 前提
- Docker
  - version 18.05.0 or later
- docker-compose
  - version 1.21.0 or later

# 手順
## docker 起動
```
docker-compose up -d
```

## grpc-client から grpc-server へ送信テスト
### コンソールへ入る
```
docker-compose exec  grpc-client bash
./grpc-client/start-console.sh

```

### grpc 送信
- `client.sayHello ({},printReply)`
```
Greeter@grpc-server:50051> client.sayHello ({},printReply)
EventEmitter {}
Greeter@grpc-server:50051> (node:20) [DEP0079] DeprecationWarning: Custom inspection function on Objects via .inspect() is deprecated

{
  "message": "Hello "
}
Greeter@grpc-server:50051>
