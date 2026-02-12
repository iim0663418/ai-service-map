# CKEditor 相容版本

此目錄包含可直接貼入 CKEditor 的 HTML 內容。

## 使用方式

1. 開啟 `content.html`
2. 複製全部內容
3. 在 CKEditor 中切換到「原始碼」模式
4. 貼上內容
5. 切換回「視覺」模式

## 注意事項

- 所有圖片路徑已改為絕對路徑（GitHub Pages）
- 移除了 `<header>`、`<main>`、`<footer>` 等 HTML5 語意標籤
- 移除了 `visually-hidden` 輔助文字（CKEditor 可能不支援）
- 保留了所有 class 名稱以便套用 CSS

## CSS 引用

需要在頁面中加入以下 CSS：

```html
<link rel="stylesheet" href="https://iim0663418.github.io/ai-service-map/assets/css/main.css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+TC:wght@300;400;500;700&display=swap" rel="stylesheet">
```

或將 `assets/css/main.css` 的內容複製到網站的全域 CSS 中。
