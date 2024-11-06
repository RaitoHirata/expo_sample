FROM node:20

# 作業ディレクトリを設定
WORKDIR /home/sample_user/my-app

# 必要なパッケージをインストール (bash など)
# RUN apk update && apk add bash
RUN apt-get update && apt-get install -y bash

# アプリケーションのソースコードをコピー
COPY package.json package-lock.json ./

# 依存関係をインストール
RUN npm install

RUN npm install -g @expo/ngrok

# アプリケーションのソースコードをコピー
COPY . .

# 開発サーバーを起動するコマンド
CMD ["npx", "expo", "start", "--tunnel"]