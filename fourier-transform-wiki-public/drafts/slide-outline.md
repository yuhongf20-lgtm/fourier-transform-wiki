# 傅立葉轉換互動式 HTML 簡報教學大綱

狀態：12 頁大綱草案，待人工審核。對象為具備基本微積分的大學生。教學語言為繁體中文，保留英文技術名詞。

每頁標明可點閱的來源 ID 與原始投影片、章節或頁碼，連到核准教材。另保留對應 Wiki 知識頁，供逐頁稿忠實度檢查。原文圖僅用來查證，教學圖依核准公式重繪。以三個互動教學單元安排在第 2、6、10–11 頁。

## 第 1 頁｜傅立葉轉換（Fourier Transform）

- **目標**　辨認課程要解決的三類問題。
- **教學重點**
  - 從時域訊號讀出頻率成分。
  - 用轉換對與性質計算頻譜。
  - 用頻譜解釋濾波與取樣。
- **公式或例題**　預覽 x(t) ↔ X(ω)、W(ω) = H(ω)V(ω)。
- **圖表設計**　以時域波形、頻譜與系統方塊圖串成路徑。
- **互動**　無教學控制。
- **講解順序**　先看訊號的兩種表示，再預告計算與工程案例。
- **來源追溯**　[S01 投影片 8.4–8.5](https://ocw.mit.edu/courses/res-6-007-signals-and-systems-spring-2011/60925ad5f87a9176dfc5ebb8afcf06e1_MITRES_6_007S11_lec08.pdf) · [Wiki](../wiki/concepts/continuous-time-fourier-transform.md)；[S03 §3.4，頁 103–104](https://see.stanford.edu/materials/lsoftaee261/book-fall-07.pdf) · [Wiki](../wiki/concepts/frequency-response-and-filtering.md)；[S05 頁 13–15、54](https://ocw.mit.edu/courses/6-003-signals-and-systems-fall-2011/12e6e5d7567fca2e993ef8563fef5a60_MIT6_003F11_lec21.pdf) · [Wiki](../wiki/concepts/sampling-and-aliasing.md)

## 第 2 頁｜同一訊號的時域與頻域

- **目標**　從同一個單邊衰減訊號辨認時域波形、頻譜幅度與相位。
- **教學重點**
  - x(t) 描述隨時間的變化。
  - |X(ω)| 與 arg X(ω) 呈現不同頻率成分。
  - 反轉換可用頻率成分合成時域訊號。
- **公式或例題**　用 e^(−at)u(t) ↔ 1/(a+jω)，a > 0，作為圖例，本頁先讀圖。
- **圖表設計**　並排 x(t)、|X(ω)| 與 arg X(ω)，頻域兩圖共用 ω 軸。
- **互動**　滑桿改變 a > 0，三圖和 1/a 的零頻幅度同步更新。固定比較尺度，觀察 a 增加時時間衰減加快、零頻幅度降低。
- **講解順序**　先讀時域，再預測調整 a 的結果，最後核對頻域兩圖。
- **來源追溯**　[S01 投影片 8.4–8.5、8.8](https://ocw.mit.edu/courses/res-6-007-signals-and-systems-spring-2011/60925ad5f87a9176dfc5ebb8afcf06e1_MITRES_6_007S11_lec08.pdf) · [Wiki](../wiki/concepts/continuous-time-fourier-transform.md)；[S04 §4.2 例 11，頁 26–27，圖 17](https://ocw.mit.edu/courses/2-161-signal-processing-continuous-and-discrete-fall-2008/3ab918dbe6a0376dbd9216e404fee31b_fourier.pdf) · [Wiki](../wiki/concepts/fourier-transform-worked-examples.md)

## 第 3 頁｜從傅立葉級數到傅立葉轉換

- **目標**　說明離散諧波間距如何隨週期增加而縮小。
- **教學重點**
  - 以週期 T₀ 重複完整落在單週期內的波形。
  - 級數係數可由頻譜取樣並除以 T₀。
  - 週期增大時，由合成總和過渡到連續積分。
- **公式或例題**　ω₀ = 2π/T₀，aₖ = X(kω₀)/T₀。離散頻譜包絡圖應以 T₀aₖ 對照 X(kω₀)。
- **圖表設計**　三格靜圖依序呈現週期複製、較疏與較密的頻率取樣。
- **互動**　無，採逐步揭示。
- **講解順序**　先擴大週期，再標諧波間距，最後指出求和轉成積分。
- **來源追溯**　[S01 投影片 8.1–8.4、8.10、8.16–8.17](https://ocw.mit.edu/courses/res-6-007-signals-and-systems-spring-2011/60925ad5f87a9176dfc5ebb8afcf06e1_MITRES_6_007S11_lec08.pdf) · [Wiki](../wiki/concepts/continuous-time-fourier-transform.md)

## 第 4 頁｜CTFT 正轉換、反轉換與記號

- **目標**　能寫出轉換對並辨認角頻率與一般頻率。
- **教學重點**
  - 正轉換用負指數，反轉換用正指數。
  - 兩個 CTFT 積分均遍及實軸，反轉換外有 1/(2π)。
  - ω 為 rad/s，f 和 S03 的 s 為 Hz。S04 的 X(jΩ) 對應本課 X(ω)。
- **公式或例題**　X(ω) = ∫_{−∞}^{∞} x(t)e^(−jωt)dt；x(t) = (1/(2π))∫_{−∞}^{∞} X(ω)e^(+jωt)dω。ω = 2πf 或 2πs。
- **圖表設計**　雙向箭頭標記分析與合成，另用一列展示 df = dω/(2π)。
- **互動**　無。
- **講解順序**　先對讀正反式，再以換元交代係數，最後看原文記號對照。
- **來源追溯**　[S01 投影片 8.4](https://ocw.mit.edu/courses/res-6-007-signals-and-systems-spring-2011/60925ad5f87a9176dfc5ebb8afcf06e1_MITRES_6_007S11_lec08.pdf) · [Wiki](../wiki/concepts/continuous-time-fourier-transform.md)；[S02 投影片 3](https://ocw.mit.edu/courses/16-36-communication-systems-engineering-spring-2009/6c4e7183ae2d48e1b6b04a337b010529_MIT16_36s09_lec02.pdf) · [Wiki](../wiki/concepts/fourier-transform-properties.md)；[S03 §2.1，頁 73](https://see.stanford.edu/materials/lsoftaee261/book-fall-07.pdf) · [Wiki](../wiki/concepts/frequency-response-and-filtering.md)；[S04 式 (38)–(39)，頁 21](https://ocw.mit.edu/courses/2-161-signal-processing-continuous-and-discrete-fall-2008/3ab918dbe6a0376dbd9216e404fee31b_fourier.pdf) · [Wiki](../wiki/concepts/fourier-transform-worked-examples.md)

## 第 5 頁｜矩形脈衝的轉換推導

- **目標**　用定義算出置中矩形脈衝的頻譜，並處理零頻。
- **教學重點**
  - 定義高度 a 與寬度 T > 0。
  - 只在脈衝的非零區間積分，以 Euler 公式化簡。
  - 零頻值由極限取得，等於脈衝面積。
- **公式或例題**　X(ω) = a∫_{−T/2}^{T/2} e^(−jωt)dt = a(j/ω)[e^(−jωT/2)−e^(+jωT/2)] = aT sin(ωT/2)/(ωT/2)（ω ≠ 0）。X(0)=aT。
- **圖表設計**　時域圖標示積分上下限，推導逐行顯示。
- **互動**　無資料控制。
- **講解順序**　先畫脈衝、設定上下限，再化簡、取極限。
- **來源追溯**　[S04 §4.2 例 8，頁 23–24，圖 14](https://ocw.mit.edu/courses/2-161-signal-processing-continuous-and-discrete-fall-2008/3ab918dbe6a0376dbd9216e404fee31b_fourier.pdf) · [Wiki](../wiki/concepts/fourier-transform-worked-examples.md)

## 第 6 頁｜脈寬如何改變 sinc 頻譜

- **目標**　預測脈寬變化對零頻值、主瓣與零點的影響。
- **教學重點**
  - 高度固定為正值 a，T 只取正值。
  - 主瓣位於第一對非零零點之間。
  - 本頁 sinc 用正規化定義，零點取連續極限 sinc(0)=1。
- **公式或例題**　X(ω)=aT sinc(ωT/(2π))，sinc(x)=sin(πx)/(πx)。X(0)=aT，首對零點 ±2π/T。
- **圖表設計**　同步畫時域脈衝和有正負旁瓣的實值 X(ω)，標示主瓣和零點。
- **互動**　T 滑桿及 T、T/4 快捷比較。a 固定，零頻值降為 aT/4 時，兩個零點到原點距離各乘 4。以精確公式標記零點，ω=0 用極限。
- **講解順序**　先讓學生預測，再縮短脈衝，讀出數值並回扣第 5 頁。
- **來源追溯**　[S04 §4.2 例 8，頁 23–24，圖 14–15](https://ocw.mit.edu/courses/2-161-signal-processing-continuous-and-discrete-fall-2008/3ab918dbe6a0376dbd9216e404fee31b_fourier.pdf) · [Wiki](../wiki/concepts/fourier-transform-worked-examples.md)

## 第 7 頁｜傅立葉轉換的五項性質

- **目標**　依時域操作選出正確的頻域公式。
- **教學重點**
  - 線性保留加權係數。
  - 時間平移改變相位，頻率平移移動頻譜。
  - 時間尺度變換含 1/|a|，時域摺積對應頻域相乘。
- **公式或例題**　αx₁+βx₂ ↔ αX₁+βX₂；x(t−τ) ↔ X(ω)e^(−jωτ)；x(at) ↔ X(ω/a)/|a|（a≠0）；(x*y)(t) ↔ X(ω)Y(ω)；x(t)e^(+jω₀t) ↔ X(ω−ω₀)。
- **圖表設計**　五列操作對照，平移與縮放以相同座標標示。
- **互動**　無，採逐列揭示。
- **講解順序**　先線性，再比較兩種平移，接尺度與摺積。
- **來源追溯**　[S02 投影片 6–7](https://ocw.mit.edu/courses/16-36-communication-systems-engineering-spring-2009/6c4e7183ae2d48e1b6b04a337b010529_MIT16_36s09_lec02.pdf) · [Wiki](../wiki/concepts/fourier-transform-properties.md)

## 第 8 頁｜摺積與 LTI 系統的頻率響應

- **目標**　解釋同一系統在時域與頻域如何算出輸出。
- **教學重點**
  - 時域摺積與頻域相乘是同一個輸出運算。
  - 區分時域相乘對應的頻域摺積及 1/(2π)。
  - 輸入、輸出皆非零時，幅度相乘、相位相加。
- **公式或例題**　w=h*v，W=HV；x(t)y(t) ↔ (X*Y)(ω)/(2π)。|W|=|H||V|，arg W=arg V+arg H（模 2π，非零時）。H 為負實數時相差 π，H=0 時輸出相位未定義。
- **圖表設計**　左圖為時域摺積，右圖為 V、H、W 的並排頻譜。
- **互動**　無。
- **講解順序**　先接第 7 頁摺積，再代入 LTI 的脈衝響應，最後比較實數響應的相位。
- **來源追溯**　[S01 投影片 8.4](https://ocw.mit.edu/courses/res-6-007-signals-and-systems-spring-2011/60925ad5f87a9176dfc5ebb8afcf06e1_MITRES_6_007S11_lec08.pdf) · [Wiki](../wiki/concepts/continuous-time-fourier-transform.md)；[S02 投影片 3、6](https://ocw.mit.edu/courses/16-36-communication-systems-engineering-spring-2009/6c4e7183ae2d48e1b6b04a337b010529_MIT16_36s09_lec02.pdf) · [Wiki](../wiki/concepts/fourier-transform-properties.md)；[S03 §3.4，頁 103–104](https://see.stanford.edu/materials/lsoftaee261/book-fall-07.pdf) · [Wiki](../wiki/concepts/frequency-response-and-filtering.md)

## 第 9 頁｜低通、高通、帶通與陷波

- **目標**　能從通帶位置判讀四類理想濾波器。
- **教學重點**
  - 低通保留零頻附近，高通為低通的補數。
  - 帶通可由兩個平移低通建立，陷波取其補數。
  - 低通在 |ω|=ωc 為 0，高通的互補值為 1。
- **公式或例題**　H_LP 在 |ω|<ωc 為 1，其餘為 0；High=1−H_LP；B=H_LP(ω−ω₀)+H_LP(ω+ω₀)（分離通帶取 ω₀>ωc）；Notch=1−B。
- **圖表設計**　四張同頻率尺度的理想響應圖，明確標示端點值。
- **互動**　無。
- **講解順序**　先低通與高通，再從平移低通構造帶通和陷波。
- **來源追溯**　[S03 §3.4.1，頁 104–106、註 7](https://see.stanford.edu/materials/lsoftaee261/book-fall-07.pdf) · [Wiki](../wiki/concepts/frequency-response-and-filtering.md)

## 第 10 頁｜取樣、頻譜複製與 Nyquist 條件

- **目標**　由取樣週期判斷帶限頻譜能否分離重建。
- **教學重點**
  - 區分連續訊號、離散樣本與連續時間脈衝列。
  - 頻譜副本間距為 ωs，每份乘以 1/Ts。
  - 使用帶限前提與嚴格條件 fs>2fm；等號另列。
  - CTFT 的 ω 為 rad/s，DTFT 的 Ω=ωTs 為 rad/sample，後者以 2π 為週期。
- **公式或例題**　x[n]=x(nTs)，Ts=1/fs，ωs=2πfs。Xp(ω)=(1/Ts)Σ X(ω−kωs)。理想重建取中央副本，增益 Ts；等號示例 x[n]=sin(πn)=0。
- **圖表設計**　固定帶限三角頻譜 X 的 ±ωm，分色畫各副本及相加曲線。
- **互動**　共用第 11 頁的 fs 滑桿，提供高於、等於、低於 2fm 三個設定。重算間距 ωs 與係數 1/Ts。等號顯示邊界提示與零樣本反例，低於門檻時標出此三角頻譜的重疊區。
- **講解順序**　先看樣本與脈衝列，再看副本、理想重建，最後解讀三種門檻狀態。
- **來源追溯**　[S05 頁 13–15、17–18、20–22、49](https://ocw.mit.edu/courses/6-003-signals-and-systems-fall-2011/12e6e5d7567fca2e993ef8563fef5a60_MIT6_003F11_lec21.pdf) · [Wiki](../wiki/concepts/sampling-and-aliasing.md)；[S02 投影片 9，等號措辭比較](https://ocw.mit.edu/courses/16-36-communication-systems-engineering-spring-2009/6c4e7183ae2d48e1b6b04a337b010529_MIT16_36s09_lec02.pdf) · [Wiki](../wiki/concepts/fourier-transform-properties.md)

## 第 11 頁｜混疊：30 kHz 如何折返至 14 kHz

- **目標**　能從取樣率與原始諧波算出折返頻率。
- **教學重點**
  - 週期 0.1 ms 對應基頻 10 kHz，第三諧波為 30 kHz。
  - 44 kHz 取樣的奈奎斯特頻率為 22 kHz，正頻率分量折返至 −14 kHz。
  - 對實值輸入，共軛分量對應 +14 kHz；抗混疊低通位於取樣前。
- **公式或例題**　30−44=−14 kHz，實值訊號的正頻率讀值為 14 kHz。抗混疊理想截止 ωs/2，重建通帶增益 Ts。
- **圖表設計**　展示原始譜線與平移副本，框出中央頻帶；可在此例使用 Hz 軸並標明換算。
- **互動**　延續第 10 頁 fs 控制，提供 44 kHz 重設。保留 30 kHz 諧波，重畫副本及折返位置。
- **講解順序**　先算 22 kHz，再平移正譜線，接著說明實值前提與工程上的前置濾波。
- **來源追溯**　[S05 頁 27–34、37、54](https://ocw.mit.edu/courses/6-003-signals-and-systems-fall-2011/12e6e5d7567fca2e993ef8563fef5a60_MIT6_003F11_lec21.pdf) · [Wiki](../wiki/concepts/sampling-and-aliasing.md)；[S03 §3.4.1，頁 104](https://see.stanford.edu/materials/lsoftaee261/book-fall-07.pdf) · [Wiki](../wiki/concepts/frequency-response-and-filtering.md)

## 第 12 頁｜總結：從轉換對到工程應用

- **目標**　能選擇適當的轉換工具並回查原始教材。
- **教學重點**
  - 以級數、CTFT 與轉換對收束表示方法。
  - 回顧 Dirac 抽取、單邊指數推導及週期線譜。
  - 用濾波與取樣串起工程判讀，回查五篇參考資料。
- **公式或例題**　δ(t)↔1；e^(−at)u(t)↔1/(a+jω)（a>0）；週期訊號的線譜權重為 2πaₖ。
- **圖表設計**　以表示 → 計算 → 系統 → 取樣串成復習圖，書目置於本頁。
- **互動**　無教學控制，保留可點閱的教材連結。
- **講解順序**　先回顧定義和例題，再用濾波與混疊收束，最後指引書目。
- **來源追溯**　[S01 投影片 8.4、8.8、8.14–8.17](https://ocw.mit.edu/courses/res-6-007-signals-and-systems-spring-2011/60925ad5f87a9176dfc5ebb8afcf06e1_MITRES_6_007S11_lec08.pdf) · [Wiki](../wiki/concepts/continuous-time-fourier-transform.md)；[S02 投影片 6–7](https://ocw.mit.edu/courses/16-36-communication-systems-engineering-spring-2009/6c4e7183ae2d48e1b6b04a337b010529_MIT16_36s09_lec02.pdf) · [Wiki](../wiki/concepts/fourier-transform-properties.md)；[S03 §3.4–3.4.1](https://see.stanford.edu/materials/lsoftaee261/book-fall-07.pdf) · [Wiki](../wiki/concepts/frequency-response-and-filtering.md)；[S04 §4.2 例 8、9、11](https://ocw.mit.edu/courses/2-161-signal-processing-continuous-and-discrete-fall-2008/3ab918dbe6a0376dbd9216e404fee31b_fourier.pdf) · [Wiki](../wiki/concepts/fourier-transform-worked-examples.md)；[S05 頁 20–22、37、54](https://ocw.mit.edu/courses/6-003-signals-and-systems-fall-2011/12e6e5d7567fca2e993ef8563fef5a60_MIT6_003F11_lec21.pdf) · [Wiki](../wiki/concepts/sampling-and-aliasing.md)

**本頁參考資料**

- S01 Alan V. Oppenheim，MIT OpenCourseWare，Signals and Systems，Lecture 8: Continuous-Time Fourier Transform。[原始教材](https://ocw.mit.edu/courses/res-6-007-signals-and-systems-spring-2011/60925ad5f87a9176dfc5ebb8afcf06e1_MITRES_6_007S11_lec08.pdf)
- S02 Eytan Modiano，MIT OpenCourseWare，16.36 Communication Systems Engineering，Lecture 2 — The Sampling Theorem。[原始教材](https://ocw.mit.edu/courses/16-36-communication-systems-engineering-spring-2009/6c4e7183ae2d48e1b6b04a337b010529_MIT16_36s09_lec02.pdf)
- S03 Brad Osgood，Stanford EE 261，The Fourier Transform and its Applications。[原始教材](https://see.stanford.edu/materials/lsoftaee261/book-fall-07.pdf)
- S04 Derek Rowell，MIT 2.161，Introduction to Frequency Domain Processing。[原始教材](https://ocw.mit.edu/courses/2-161-signal-processing-continuous-and-discrete-fall-2008/3ab918dbe6a0376dbd9216e404fee31b_fourier.pdf)
- S05 Dennis Freeman，MIT 6.003，Lecture 21 — Sampling。[原始教材](https://ocw.mit.edu/courses/6-003-signals-and-systems-fall-2011/12e6e5d7567fca2e993ef8563fef5a60_MIT6_003F11_lec21.pdf)

## 互動驗證規格

- 第 2 頁：以同一 a 產生 x(t)、幅度和相位。正的 a 調大時，查看衰減與零頻幅度 1/a 同步變化。固定 t 軸和 ω 軸的比較範圍。
- 第 6 頁：測 T 與 T/4；固定 a，對照 aT 與 aT/4，以及 ±2π/T 與 ±8π/T。兩軸標為 t（s）、ω（rad/s）。
- 第 10–11 頁：測 fs 大於、等於、小於 2fm 與 44 kHz 例題。副本間距 ωs = 2πfs，係數 1/Ts；線譜以箭頭權重表示。連續頻譜維持 rad/s 或明示換成 Hz。Ω（rad/sample）僅用於 DTFT，若後續畫圖則使用獨立座標。
- 操作以可鍵盤調整且有文字標籤的控制為前提。每次操作同步更新數值和圖，讓學生核對預測。

## 大綱檢查與待審事項

12 頁均有目標、2–4 個重點、公式或例題、來源定位、圖表、互動判定及講解順序。排列以第 5 頁完整推導、第 11 頁完整工程例題為核心。第 12 頁的 Dirac 與指數作為集中複習，保留原文定位。本輪待人工確認此資訊分配及三項互動設計。未進行逐頁稿、HTML 或瀏覽器驗證。
