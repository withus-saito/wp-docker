#!/bin/bash

set -e

echo "▶︎ env 生成"
if [ ! -f .env ]; then
    cp .env.example .env
    echo ".env を生成しました"
else
    echo ".env は存在します"
fi

echo "▶︎ 不要ファイルを削除"
rm -rf .git
rm -f .env.example
rm -f README.md
echo "  不要ファイルを削除しました"

echo "▶︎ WordPressを構築&dockerを起動"
docker compose up -d

echo "▶︎ 完了"
echo "http://localhost:8080 を開いてください"
