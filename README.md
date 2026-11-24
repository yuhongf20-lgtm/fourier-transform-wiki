# Fourier Transform LLM Wiki

本專題面向具備基本微積分的大學生，以繁體中文及英文技術術語介紹傅立葉轉換。五篇教材已逐篇人工核准並納入 Wiki，涵蓋時域與頻域、CTFT、計算例題、濾波、取樣與混疊。12 頁深色互動簡報已取得交付核准。

## 離線開啟簡報

1. 若收到壓縮檔，先解壓縮並保留資料夾結構。
2. 在檔案總管雙擊 [slides/deck.html](slides/deck.html)，或以桌面瀏覽器開啟該檔案。本機驗證環境為 Windows Microsoft Edge。
3. 使用上一頁／下一頁、鍵盤左右方向鍵或跳頁選單。第 2、6、10～11 頁可操作圖表。

簡報的 CSS、JavaScript 與圖表皆內嵌，離線可翻頁及操作。連至原始教材網站的網址須連網。Wiki 與證據卡可在本機查閱。公開版保留來源紀錄及官方教材網址，原始 PDF 由該網址取得。

## 主要檔案

| 用途 | 位置 |
|---|---|
| Wiki 導覽、知識頁與核准紀錄 | [Wiki 索引](wiki/index.md) · [Wiki log](wiki/log.md) |
| S01～S05 教材網址、來源資訊與證據卡 | [來源紀錄](raw/) · [證據卡](cards/) |
| 教學設計與逐頁稿 | [大綱](drafts/slide-outline.md) · [逐頁稿](drafts/slide-script.md) |
| 12 頁互動式 HTML | [簡報](slides/deck.html) |
| 檢查結果、交付及反思 | [整體覆蓋率](checks/wiki-coverage.md) · [簡報檢查](checks/slides-build.md) · [專題報告](report.md) |
| 專案規則及流程 | [AGENTS.md](AGENTS.md) · [workflow.md](workflow.md) |

交付範圍及尚未驗證事項見[簡報檢查](checks/slides-build.md)。

## 重新執行 PDF 雜湊檢查

公開版排除 raw/ 內的 PDF。若要重跑 [S01 檢查器](checks/check-s01.ps1) 的 SHA-256 檢查，請從 [S01 官方教材網址](raw/S01.md) 取得原始 PDF，並在本機存為 raw/S01.pdf。缺少該檔時，SHA-256 檢查無法通過。既有 [S01 檢查紀錄](checks/S01.md) 對應當時留存的原檔。
