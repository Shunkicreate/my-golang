# 使用するGoのバージョンを指定
FROM golang:1.18

# ワーキングディレクトリを設定
WORKDIR /app

# ソースコードをコンテナ内にコピー
COPY . .

# Goの依存関係をインストール
RUN go mod init example.com/hello
RUN go mod tidy

# アプリケーションをビルド
RUN go build -o /hello

# コンテナが起動したときに実行されるコマンド
CMD ["/hello"]
