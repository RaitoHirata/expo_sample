# Dockerコンテナ上でExpoを動かす


1. 携帯に App Store から expo go をインストールしておく
   インストール後、会員登録する
2. プロジェクトを入れたいディレクトリに移動して「my-app」というフォルダを新規作成する
3. コマンドツールを開き、先ほど作成した「my-app」ディレクトリに移動(cd xxx)
4. git clone xxxxxx で GitHub からローカルフォルダにダウンロード
5. Git bashなどbashのCUIを開き、cd /クローンしてきたフォルダ/my-app でディレクトリ移動
6. ./get-local-ip-addr.sh
   もし 3. がうまくいかない場合は、my-app/.envファイルをテキストエディタで開き、PCで、Wifiに接続されている
   IPアドレスを 「LOCAL_IP_ADDR=」の後ろに入力
   <IPアドレス確認方法(Windows)>
   コントロール パネル\ネットワークとインターネット\ネットワークと共有センター で
   インターネットの Wi-Fi(ネットワーク名) の青文字部をクリックして、ポップアップの 「詳細」を押下し、
   IPv4アドレス の箇所に書いている
   !注意! 携帯もPCと同じWiFiに接続していないと、expo goでうまく動かない！
7. cd /クローンしてきたフォルダ/my-app ディレクトリで 「docker-compose up --build」を実行
8. 実行したターミナルにQRコードが出てきたら、携帯のカメラで読み取り、expo go で開く
9. うまくできていれば expo go に画面が表示される
   ※ 赤い文字でエラーっぽいのが出ても、時間をおいて再度QR読み込めば、うまくいく。
10. localhost:8081にアクセスすると、expo goと同じ画面がブラウザでも表示される

