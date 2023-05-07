# Node.js 14をベースとする
FROM node:14

# 作業ディレクトリを/appに設定
WORKDIR /app

# 依存関係をインストール
COPY ./package*.json ./
RUN npm install

# ソースコードをコピー
COPY . .

# ポート番号3000を公開
EXPOSE 3000

# Reactアプリを起動
CMD ["npm", "start"]
