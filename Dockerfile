# 使用するGoのバージョンを指定
FROM golang:1.22.0

# ワーキングディレクトリを設定
WORKDIR /app

# ソースコードをコンテナ内にコピー
COPY . .

# Goの依存関係をインストール
RUN go mod tidy

# air のインストール
RUN go install github.com/cosmtrek/air@v1.50.0

# air の設定ファイルをコピー (あらかじめプロジェクトルートに .air.toml を作成しておく必要があります)
COPY .air.toml ./.air.toml

# コンテナが起動したときに実行されるコマンド (air を使用して自動リロードを有効にする)
CMD ["air", "-c", ".air.toml"]
