# ベースイメージとしてPythonを使用
FROM python:3.9

# 作業ディレクトリを設定
WORKDIR /app

# 依存パッケージをインストール
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# アプリケーションファイルをコピー
COPY . .

# Flaskアプリを実行
CMD ["python", "app.py"]
