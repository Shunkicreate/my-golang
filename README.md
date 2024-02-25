# my-golang

## Dockerの起動
```
sudo service docker start
```

## Dockerイメージのビルド
```
docker build -t hello-go .
```

## コンテナを起動する
```
docker run -p 8080:8080 hello-go
```