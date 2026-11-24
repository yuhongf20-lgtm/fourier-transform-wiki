# Wiki Ingest 與核准紀錄

- 專案初始化：建立資料夾及規則檔。
- 已人工核准：5 篇。已正式 ingest：5 篇。

## 2026-11-23（台北）｜S01

- 教材：Signals and Systems, Lecture 8: Continuous-Time Fourier Transform。Alan V. Oppenheim，MIT OpenCourseWare。
- 原始網址與取得日期：[MIT OCW 教材頁](https://ocw.mit.edu/courses/res-6-007-signals-and-systems-spring-2011/resources/mitres_6_007s11_lec08-1/)，2026-11-23。[原檔保存紀錄](../raw/S01.md)
- 相關章節：講義投影片 8.1–8.8、8.10、8.14–8.17。
- 公式慣例：角頻率 ω，正轉換負指數，反轉換正指數及 1/(2π)。
- 人工核准：使用者於本次對話明確核准 S01。
- Ingest 結果：已寫入[正式知識頁](concepts/continuous-time-fourier-transform.md)與[證據卡](../cards/S01.md)。見[檢查結果](../checks/S01.md)。


### S01 驗證更新｜2026-11-23（台北）

- 第二次人工授權後，以單次行程 RemoteSigned 執行一次 S01 檢查器，Exit Code = 0，六項檢查通過。完整輸出、歷次失敗與尚未涵蓋範圍見[S01 檢查紀錄](../checks/S01.md)。


## 2026-11-23（台北）｜S02

- 教材：16.36 Communication Systems Engineering，Lecture 2 — The Sampling Theorem。Eytan Modiano，MIT OpenCourseWare。
- 原始 PDF：[MIT OCW 講義](https://ocw.mit.edu/courses/16-36-communication-systems-engineering-spring-2009/6c4e7183ae2d48e1b6b04a337b010529_MIT16_36s09_lec02.pdf)。[來源紀錄與 SHA-256](../raw/S02.md)
- 相關位置：投影片 3、6、7。
- 人工核准：使用者於本次對話明確核准 S02 正式 ingest。
- 公式慣例：S02 原文採 f（Hz）。Wiki 教學以 ω = 2πf 統一至 S01 的 ω 慣例。
- Ingest 結果：已建立[五項性質](concepts/fourier-transform-properties.md)與[證據卡](../cards/S02.md)。[品質檢查](../checks/S02.md)


## 2026-11-23（台北）｜S03

- 教材：Stanford EE 261 — The Fourier Transform and its Applications，Brad Osgood。
- 人工核准：使用者明確核准 S03，含補充審核後的低通截止點與相位說明。
- 範圍：§2.1、§3.4、§3.4.1。原文 s 慣例保留，Wiki 採 ω = 2πs。
- Ingest 結果：已保存[原始資料](../raw/S03.md)，建立[證據卡](../cards/S03.md)及[正式知識頁](concepts/frequency-response-and-filtering.md)。[品質檢查](../checks/S03.md)


## 2026-11-23（台北）｜S04

- 教材：MIT 2.161 Signal Processing: Continuous and Discrete，Fall 2008，Introduction to Frequency Domain Processing，Derek Rowell。
- 人工核准：使用者明確核准式 (38)–(39) 與 §4.2 四項觀念正式 ingest。
- 原文來源問題：§4.1（頁 22）寫成 F = 2πΩ，與前文 Ω0 = 2πF0 和式 (38)–(39) 的換元關係不一致。依核准範圍，該式只保留為問題紀錄。Wiki 採 ω = 2πf。
- Ingest：已保存[來源及 PDF](../raw/S04.md)，建立[證據卡](../cards/S04.md)與[正式知識頁](concepts/fourier-transform-worked-examples.md)。[品質檢查](../checks/S04.md)


## 2026-11-23（台北）｜S05

- 教材：MIT 6.003 Signals and Systems，Fall 2011，Lecture 21 — Sampling，Dennis Freeman。
- 人工核准：使用者明確核准五項取樣觀念，以及奈奎斯特等號邊界與連續／離散角頻率的釐清。
- 端點審核：S02 投影片 9 使用 fs ≥ 2fm 的措辭。S05 頁 21 採 ωs > 2ωm，頁 22 摘要僅排除 |ω| > ωs/2 的成分。人工核准採嚴格條件，等號須另確認端點與訊號假設。
- Ingest：已保存[來源及 PDF](../raw/S05.md)，建立[證據卡](../cards/S05.md)與[正式知識頁](concepts/sampling-and-aliasing.md)。[品質檢查](../checks/S05.md)


### 教學大綱草案｜2026-11-23（台北）

- 依已核准的 S01–S05、正式 Wiki 與整體覆蓋率檢查，完成 [12 頁教學大綱草案](../drafts/slide-outline.md)，逐頁記錄原始教材位置及 Wiki 對照。大綱待人工審核，尚未進入逐頁稿或 HTML 製作。


### 逐頁教學稿｜2026-11-24（台北）

- 使用者已人工核准 12 頁教學大綱。本階段完成 [12 頁逐頁教學稿](../drafts/slide-script.md)，包括投影片文字、公式、圖表與互動規格、來源及講者備註。
- 核對頁名與順序、逐頁欄位、關鍵公式與實值輸入前提、Wiki 本機連結和五筆書目。逐頁稿待人工審核，尚未產生 HTML 或進行瀏覽器驗證。


### 互動式 HTML 簡報第一版｜2026-11-24（台北）

- 使用者已人工核准 12 頁逐頁稿。已實作可離線開啟的 [12 頁 HTML 簡報](../slides/deck.html)，含三組互動、導覽、講者備註及五篇書目。
- 結構、連結及 Edge 無頭初檢已有結果，詳見 [HTML 第一版初檢](../checks/slides-build.md)。第一版待人工審核，尚未完成最終驗收。


### 第 5 頁數學複核｜2026-11-24（台北）

- 人工畫面檢查提出矩形脈衝推導的符號疑義。複核逐頁稿及 HTML，原始函數代界與最終結果一致，兩份公式維持現有寫法。代數及數值證據見 [HTML 第一版初檢](../checks/slides-build.md)。


### HTML 深色科技風改版｜2026-11-24（台北）

- 使用者核准視覺改版。已更新 [HTML 簡報](../slides/deck.html) 的樣式與圖表呈現。教學頁面、來源及第 5 頁既有正確公式仍與改版前相同。
- Edge 兩種視口的初檢通過，首輪底色像素檢查及複測已記於 [簡報初檢](../checks/slides-build.md)。待人工畫面審核。


### 深色版本整體自動化複測｜2026-11-24（台北）

- 使用者決定跳過剩餘逐頁人工截圖。已完成 [深色簡報](../slides/deck.html) 的第 6、9 頁呈現修正及四種 Edge 視口的整體自動化複測。第 4、11 頁既有安排在測試範圍內通過。教學頁面與來源維持原樣。
- 結果與界線見 [簡報檢查紀錄](../checks/slides-build.md)。已備妥交付檔，待使用者決定最終驗收。


### 最終交付核准｜2026-11-24（台北）

- 使用者依既有人工畫面檢查與本輪 Edge 整體自動化複測，明確核准交付 [12 頁深色科技風版本](../slides/deck.html)，並授權省略剩餘逐頁人工截圖。
- 已記錄測試通過範圍與尚未驗證項目，詳見 [簡報檢查](../checks/slides-build.md)、[交付報告](../report.md)及[離線開啟說明](../README.md)。
