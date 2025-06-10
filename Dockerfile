# Node.js公式イメージを使用
FROM node:18

# アプリ作業ディレクトリ作成
WORKDIR /usr/src/app

# package.jsonとlockファイルをコピーして依存インストール
COPY package*.json ./
RUN npm install

# アプリ全体をコピー
COPY . .

# アプリ起動
CMD ["npm", "start"]

# コンテナで使うポート
EXPOSE 3000
