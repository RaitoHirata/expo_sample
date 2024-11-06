# bashが使えるCUIで実行!!!
# Macは使えないかも
#  ./get-local-ip-addr.sh でシェルスクリプト実行できる

#!/bin/bash

# IP アドレスを取得
IP=$(hostname -I | awk '{print $1}') # IPv4 アドレスの取得

if [ -z "$IP" ]; then
echo "IPアドレスを取得できませんでした。"
exit 1
fi

# .envファイルから古い LOCAL_IP_ADDR 行を削除
sed -i.bak "/LOCAL_IP_ADDR=/d" .env

# 新しい IP アドレスを .env ファイルに追加
echo "LOCAL_IP_ADDR=$IP" >> .env

echo "LOCAL_IP_ADDR を $IP に設定しました。"