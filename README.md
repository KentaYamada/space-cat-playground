# space-cat-playground
C言語と戯れるためのワークスペース

## 必須要件
以下のパッケージがインストール済であること  
- docker
- docker-compose

## 起動, 停止
``` bash
# バックグラウンド起動
docker-compose up -d

# コンテナ起動確認
docker-ps

# コンテナ停止
docker-compose down
```

## コンパイル
コンテナへログインして、clang実行  
※ビルドはMakefileでの定義推奨
``` bash
docker exect -t continar_id /bin/bash
cd /home/c-playground
```
