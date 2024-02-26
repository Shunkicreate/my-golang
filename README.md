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
gcloud run deploy hello-go --image gcr.io/my-golang-415415/hello-go --platform managed --region asia-northeast1 --allow-unauthenticated