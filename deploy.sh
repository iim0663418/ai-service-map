#!/bin/bash

# GitHub 部署腳本
# 使用方式：./deploy.sh

echo "=== 政府 AI 智慧服務地圖 - GitHub Pages 部署 ==="

# 1. 初始化 Git（如果尚未初始化）
if [ ! -d .git ]; then
    git init
    echo "✓ Git 已初始化"
fi

# 2. 添加所有檔案
git add -A
echo "✓ 檔案已暫存"

# 3. 提交變更
git commit -m "feat: 對齊 moda.gov.tw 設計系統並實施 WCAG 2.2 AA 標準

- 對齊 moda.gov.tw 色彩與字體系統
- 加入 Skip link（WCAG 2.4.1）
- 調整 landmark 結構
- 實施流體字級與相對單位斷點
- 加入 prefers-reduced-motion 支援
- 改用語意化 ul/li 結構
- 所有外連加入新分頁提示
- 類別圖示改為裝飾圖（alt=\"\"）
- 焦點樣式使用主色提升對比"

echo "✓ 變更已提交"

# 4. 設定遠端倉庫（請替換為你的 GitHub 用戶名）
GITHUB_USER="iim0663418"
REPO_NAME="ai-service-map"

# 檢查是否已有 origin
if git remote | grep -q "^origin$"; then
    echo "⚠ 遠端 origin 已存在，跳過設定"
else
    git remote add origin "https://github.com/${GITHUB_USER}/${REPO_NAME}.git"
    echo "✓ 遠端倉庫已設定：https://github.com/${GITHUB_USER}/${REPO_NAME}"
fi

# 5. 推送到 GitHub
echo ""
echo "準備推送到 GitHub..."
echo "請確認："
echo "1. 已在 GitHub 建立 ${REPO_NAME} 倉庫"
echo "2. 已設定 GitHub 認證（SSH 或 Personal Access Token）"
echo ""
read -p "按 Enter 繼續推送，或 Ctrl+C 取消..."

git branch -M main
git push -u origin main

echo ""
echo "✓ 推送完成！"
echo ""
echo "=== 下一步：設定 GitHub Pages ==="
echo "1. 前往 https://github.com/${GITHUB_USER}/${REPO_NAME}/settings/pages"
echo "2. Source 選擇：Deploy from a branch"
echo "3. Branch 選擇：main"
echo "4. Folder 選擇：/ (root)"
echo "5. 點擊 Save"
echo ""
echo "等待約 1-2 分鐘後，網站將發布於："
echo "https://${GITHUB_USER}.github.io/${REPO_NAME}/"
