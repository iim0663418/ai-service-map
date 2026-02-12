# 政府 AI 智慧服務地圖

20 個政府運用 AI 技術，在生活各面向提供更聰明、更便利的精選政府智慧服務。

## 專案結構

```
ai-service-map/
├── index.html          # 主頁面
├── assets/
│   ├── css/
│   │   └── main.css   # 主樣式表
│   └── images/        # 圖片資源
├── .nojekyll          # GitHub Pages 設定
└── README.md
```

## 設計系統

本專案採用數位發展部 (moda.gov.tw) 設計系統：

- **字體**：Noto Sans TC
- **色彩**：CSS 變數系統 (--md-*)
- **響應式**：支援桌面與行動裝置
- **無障礙**：符合 WCAG 標準

## 服務分類

- 🎓 **學習幫手**：個人化適性學習
- 💼 **職涯加速器**：就業與創業協助
- 💰 **理財好夥伴**：稅務與財務管理
- 🏠 **生活萬事通**：食安、旅遊、天氣
- 🏛️ **公共事務通**：司法與資料查詢

## 本地開發

```bash
# 使用任何 HTTP 伺服器
python -m http.server 8000
# 或
npx serve
```

開啟 http://localhost:8000

## 部署

本專案使用 GitHub Pages 部署：

1. 推送至 GitHub
2. Settings → Pages
3. Source: main branch / (root)

## 授權

資料來源：數位發展部、各相關部會網站
