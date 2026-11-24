# 傅立葉轉換｜12 頁逐頁教學稿

狀態：依人工核准大綱撰寫，待逐頁人工審核。以 16:9 投影片為目標。每頁的「投影片正文」與「公式」為顯示內容；圖表規格、互動說明及備註供製作與講解。來源列可用短標籤顯示，連至正式 Wiki 與原始教材。

## 第 1 頁｜傅立葉轉換（Fourier Transform）

### 投影片正文

把訊號拆成頻率成分（Fourier Transform）。

- **看懂**時域與頻域的兩種表示。
- **算出**頻譜並預測時域操作的影響。
- **解釋**濾波、取樣與混疊。

### 公式、符號與單位

`x(t) ↔ X(ω)`、`W(ω)=H(ω)V(ω)`。t 為時間（s），ω 為連續角頻率（rad/s）。

### 圖表規格

從波形小圖的 t 軸到頻譜小圖的 ω 軸，再到「輸入 → 系統 → 輸出」方塊。兩小圖的縱軸分別為 x(t) 與 |X(ω)|。圖說「從訊號表示走到工程判讀」。

### 互動規格

無教學控制。

### 來源與講者備註

- **來源追溯**　[S01 投影片 8.4–8.5](https://ocw.mit.edu/courses/res-6-007-signals-and-systems-spring-2011/60925ad5f87a9176dfc5ebb8afcf06e1_MITRES_6_007S11_lec08.pdf) · [Wiki](../wiki/concepts/continuous-time-fourier-transform.md)；[S03 §3.4，頁 103–104](https://see.stanford.edu/materials/lsoftaee261/book-fall-07.pdf) · [Wiki](../wiki/concepts/frequency-response-and-filtering.md)；[S05 頁 13–15、54](https://ocw.mit.edu/courses/6-003-signals-and-systems-fall-2011/12e6e5d7567fca2e993ef8563fef5a60_MIT6_003F11_lec21.pdf) · [Wiki](../wiki/concepts/sampling-and-aliasing.md)

先用兩幅圖引入同一訊號的兩種表示，再說明全課會推導一組轉換、比較濾波器並完成混疊例題。

## 第 2 頁｜同一訊號的時域與頻域

### 投影片正文

**時域（Time Domain）**讀波形隨時間如何變化。

**頻域（Frequency Domain）**讀各角頻率的幅度與相位。反轉換把這些頻率成分合成回時域。

### 公式、符號與單位

`x(t)=e^(−at)u(t)`，`a>0`（s⁻¹），u(t) 為單位階躍。`X(ω)=1/(a+jω)`，`|X(ω)|=1/√(a²+ω²)`，`arg X(ω)=−arctan(ω/a)`（rad），`|X(0)|=1/a`。j 為虛數單位。

### 圖表規格

時域 t（s）對 x(t)，負時間為零、t≥0 後指數衰減。兩個頻域小圖共用 ω（rad/s），縱軸各為 |X(ω)|、相位（rad）；幅度標出 1/a，相位標出過零點。圖說「同一衰減參數，三種同步讀法」。

### 互動規格

**衰減率 a**，0.5–3.0 s⁻¹，步進 0.1，預設 1.0。三圖同步重算。固定 t 與 ω 比較範圍，a 增加時衰減加快且零頻幅度降低。

### 來源與講者備註

- **來源追溯**　[S01 投影片 8.4–8.5、8.8](https://ocw.mit.edu/courses/res-6-007-signals-and-systems-spring-2011/60925ad5f87a9176dfc5ebb8afcf06e1_MITRES_6_007S11_lec08.pdf) · [Wiki](../wiki/concepts/continuous-time-fourier-transform.md)；[S04 §4.2 例 11，頁 26–27，圖 17](https://ocw.mit.edu/courses/2-161-signal-processing-continuous-and-discrete-fall-2008/3ab918dbe6a0376dbd9216e404fee31b_fourier.pdf) · [Wiki](../wiki/concepts/fourier-transform-worked-examples.md)

先問「哪個波形衰減得更快？」再讓學生預測零頻讀值，最後指出相位曲線與幅度曲線各回答不同問題。

## 第 3 頁｜從傅立葉級數到傅立葉轉換

### 投影片正文

**傅立葉級數（Fourier Series）**用離散諧波合成週期訊號。把一個完整波形以週期 T₀ 重複。T₀ 越長，諧波越密，合成總和在極限下轉為積分。

### 公式、符號與單位

`ω₀=2π/T₀`，`aₖ=X(kω₀)/T₀`。T₀ 以秒計，ω₀ 以 rad/s 計，k 為整數。縮放後的取樣值 `T₀aₖ=X(kω₀)` 可和同一包絡對照。

### 圖表規格

左圖 t（s）對週期複製波形，標出 T₀；右側兩圖以 ω（rad/s）為橫軸、實值示意包絡 X(ω) 為縱軸，畫疏與密兩組標為 T₀aₖ 的取樣點。圖說「間距縮小，包絡保持同一尺度」。

### 互動規格

無參數控制。依序揭示複製、取樣、極限三幕。

### 來源與講者備註

- **來源追溯**　[S01 投影片 8.1–8.4、8.10、8.16–8.17](https://ocw.mit.edu/courses/res-6-007-signals-and-systems-spring-2011/60925ad5f87a9176dfc5ebb8afcf06e1_MITRES_6_007S11_lec08.pdf) · [Wiki](../wiki/concepts/continuous-time-fourier-transform.md)

先強調波形完整落在一個週期內，再指出 1/T₀ 縮放與取樣間距。

## 第 4 頁｜CTFT 正轉換、反轉換與記號

### 投影片正文

**正轉換（Analysis）**從時域求頻譜。**反轉換（Synthesis）**以頻譜合成訊號。

記住：正負號相反，角頻率慣例的反轉換外有 1/(2π)。

### 公式、符號與單位

`X(ω)=∫_{−∞}^{∞}x(t)e^(−jωt)dt`。

`x(t)=(1/(2π))∫_{−∞}^{∞}X(ω)e^(+jωt)dω`。

ω：rad/s；f、S03 的 s：Hz（時間以秒計）。`ω=2πf`，`df=dω/(2π)`；S04 的 X(jΩ) 對應 X(ω)，其中 Ω 是連續角頻率。

### 圖表規格

中央雙向箭頭連接 x(t) 與 X(ω)，上箭頭標「負號」，下箭頭標「正號、1/(2π)」。另以公式行顯示 Hz 到 rad/s 的換元。無數值座標。

### 互動規格

無。

### 來源與講者備註

- **來源追溯**　[S01 投影片 8.4](https://ocw.mit.edu/courses/res-6-007-signals-and-systems-spring-2011/60925ad5f87a9176dfc5ebb8afcf06e1_MITRES_6_007S11_lec08.pdf) · [Wiki](../wiki/concepts/continuous-time-fourier-transform.md)；[S02 投影片 3](https://ocw.mit.edu/courses/16-36-communication-systems-engineering-spring-2009/6c4e7183ae2d48e1b6b04a337b010529_MIT16_36s09_lec02.pdf) · [Wiki](../wiki/concepts/fourier-transform-properties.md)；[S03 §2.1，頁 73](https://see.stanford.edu/materials/lsoftaee261/book-fall-07.pdf) · [Wiki](../wiki/concepts/frequency-response-and-filtering.md)；[S04 式 (38)–(39)，頁 21](https://ocw.mit.edu/courses/2-161-signal-processing-continuous-and-discrete-fall-2008/3ab918dbe6a0376dbd9216e404fee31b_fourier.pdf) · [Wiki](../wiki/concepts/fourier-transform-worked-examples.md)

先逐項指出符號及積分上下限，再用 df 的換元說明係數。

## 第 5 頁｜矩形脈衝的轉換推導

### 投影片正文

**矩形脈衝（Rectangular Pulse）**以 t=0 為中心。高度 a 固定，寬度 T>0。只有 −T/2<t<T/2 的區間對正轉換積分有貢獻。

### 公式、符號與單位

對 ω≠0：

1. `X(ω)=a∫_{−T/2}^{T/2}e^(−jωt)dt`
2. `=a(j/ω)[e^(−jωT/2)−e^(+jωT/2)]`
3. `=aT sin(ωT/2)/(ωT/2)`

令 `z=ωT/2`。由 `lim(z→0) sin(z)/z=1` 得 `X(0)=aT`。T（s），ω（rad/s）。

### 圖表規格

t（s）對 x(t)，矩形頂標 a，底標 −T/2、T/2，區間下方對準第一行積分。圖說「在非零區間積分，零頻值等於面積」。

### 互動規格

無參數控制。依序揭示積分、代界與 Euler 化簡、零頻極限。

### 來源與講者備註

- **來源追溯**　[S04 §4.2 例 8，頁 23–24，圖 14](https://ocw.mit.edu/courses/2-161-signal-processing-continuous-and-discrete-fall-2008/3ab918dbe6a0376dbd9216e404fee31b_fourier.pdf) · [Wiki](../wiki/concepts/fourier-transform-worked-examples.md)

先設定非零區間。明確提醒第二步須 ω≠0，再用極限補回零頻。

## 第 6 頁｜脈寬如何改變 sinc 頻譜

### 投影片正文

**固定高度，縮短脈衝，頻譜主瓣變寬。**

主瓣在首對非零零點之間。比較 T 與 T/4，觀察零頻值和兩側零點。

### 公式、符號與單位

`X(ω)=aT sinc(ωT/(2π))`，此處正規化 `sinc(x)=sin(πx)/(πx)`，`sinc(0)=1`。`X(0)=aT`；首對零點 `ω=±2π/T`。T 縮為 T/4 時，零頻值為 aT/4，首對零點為 ±8π/T。

### 圖表規格

時域 t（s）對 x(t)；頻域 ω（rad/s）對實值 X(ω)，保留正負旁瓣。標記 (0,aT)、兩個零點及兩點間主瓣。圖說「零點外移，零頻值降低」。

### 互動規格

**脈衝寬度 T**，0.25–2.00 s，步進 0.05，預設 1.00 s；高度固定 a=1（相對幅度）。**比較 T 與 T/4**採固定參考 1.00 s／0.25 s，兩圖共用比較尺度；同步更新零點及零頻值。

### 來源與講者備註

- **來源追溯**　[S04 §4.2 例 8，頁 23–24，圖 14–15](https://ocw.mit.edu/courses/2-161-signal-processing-continuous-and-discrete-fall-2008/3ab918dbe6a0376dbd9216e404fee31b_fourier.pdf) · [Wiki](../wiki/concepts/fourier-transform-worked-examples.md)

讓學生先預測 T/4 的主瓣與峰值，再切換並用讀值核對。

## 第 7 頁｜傅立葉轉換的五項性質

### 投影片正文

**五項傅立葉轉換性質（Fourier Transform Properties）**

用時域操作找頻域結果。時間延遲主要改變相位；乘上複指數會移動頻譜。

### 公式、符號與單位

在對應轉換與運算有定義時：

| 操作 | 轉換對 |
|---|---|
| 線性 Linearity | `αx₁(t)+βx₂(t) ↔ αX₁(ω)+βX₂(ω)` |
| 時間平移 Time Shifting | `x(t−τ) ↔ X(ω)e^(−jωτ)` |
| 時間尺度 Time Scaling | `x(at) ↔ X(ω/a)/\|a\|`（實數 a≠0） |
| 摺積 Convolution | `(x*y)(t) ↔ X(ω)Y(ω)` |
| 頻率平移 Frequency Shifting | `x(t)e^(+jω₀t) ↔ X(ω−ω₀)` |

α、β 為常數，τ（s），尺度 a 無因次，ω₀（rad/s）。

### 圖表規格

兩欄操作表，逐行顯示。可用微型座標示意時間平移的 t 軸與頻率平移的 ω 軸，分別以 x、頻譜幅度為縱軸。圖說「時移與頻移操作不同」。

### 互動規格

無參數控制。

### 來源與講者備註

- **來源追溯**　[S02 投影片 6–7](https://ocw.mit.edu/courses/16-36-communication-systems-engineering-spring-2009/6c4e7183ae2d48e1b6b04a337b010529_MIT16_36s09_lec02.pdf) · [Wiki](../wiki/concepts/fourier-transform-properties.md)

先讀線性，再對照兩種平移，接著講 1/|a| 與摺積，為第 8 頁鋪路。

## 第 8 頁｜摺積與 LTI 系統的頻率響應

### 投影片正文

**線性時不變系統（LTI System）**的時域輸出由輸入與脈衝響應摺積。頻域只需把每個頻率的輸入乘上系統的**頻率響應（Frequency Response）**。

輸入與輸出皆非零時，幅度相乘、相位相加。

### 公式、符號與單位

`w(t)=(h*v)(t)`，`W(ω)=H(ω)V(ω)`。v、h、w 分別為輸入、脈衝響應、輸出。`x(t)y(t) ↔ (X*Y)(ω)/(2π)`。H 為正實數時相位保持，負實數時相差 π（模 2π）；H=0 時輸出為零，相位未定義。

### 圖表規格

上排時域方塊 v、h、w。下排三個共用 ω（rad/s）的幅度圖，分別標 |V|、|H|、|W|；以同一頻率的垂線對齊。圖說「時域摺積在頻域成為逐點相乘」。

### 互動規格

無。

### 來源與講者備註

- **來源追溯**　[S01 投影片 8.4](https://ocw.mit.edu/courses/res-6-007-signals-and-systems-spring-2011/60925ad5f87a9176dfc5ebb8afcf06e1_MITRES_6_007S11_lec08.pdf) · [Wiki](../wiki/concepts/continuous-time-fourier-transform.md)；[S02 投影片 3、6](https://ocw.mit.edu/courses/16-36-communication-systems-engineering-spring-2009/6c4e7183ae2d48e1b6b04a337b010529_MIT16_36s09_lec02.pdf) · [Wiki](../wiki/concepts/fourier-transform-properties.md)；[S03 §3.4，頁 103–104](https://see.stanford.edu/materials/lsoftaee261/book-fall-07.pdf) · [Wiki](../wiki/concepts/frequency-response-and-filtering.md)

先把 v 和 h 連到 w，再指出時域相乘的另一條定理及 1/(2π)，最後加相位的非零前提。

## 第 9 頁｜低通、高通、帶通與陷波

### 投影片正文

**理想濾波器（Ideal Filters）**用 1 表示原樣通過、0 表示抑制。低通保留零頻附近，高通取其補數；帶通保留成對頻帶，陷波抑制這對頻帶。

### 公式、符號與單位

`H_LP(ω)=1` 若 `|ω|<ωc`，其餘為 0。`High=1−H_LP`。`B(ω)=H_LP(ω−ω₀)+H_LP(ω+ω₀)`（ω₀>ωc）。`Notch=1−B`。ω、ωc、ω₀ 均為 rad/s。

### 圖表規格

四格共用 ω（rad/s）與響應值（0、1）；標出 ±ωc 與 ±ω₀，帶通另標各帶邊緣。用實心與空心點區分截止值。圖說「低通截止點歸阻帶，互補高通在該點為 1」。

### 互動規格

無。

### 來源與講者備註

- **來源追溯**　[S03 §3.4.1，頁 104–106、註 7](https://see.stanford.edu/materials/lsoftaee261/book-fall-07.pdf) · [Wiki](../wiki/concepts/frequency-response-and-filtering.md)

依序看兩組補數。提醒理想響應的銳利截止是教學模型；有限過渡頻帶是正式 Wiki 依 S03 實作限制延伸的工程解釋，並在第 11 頁回扣。

## 第 10 頁｜取樣、頻譜複製與 Nyquist 條件

### 投影片正文

**取樣（Sampling）**以固定間隔讀出 x[n]，可用加權脈衝列分析頻譜。取樣後，頻譜成為等間距副本。

**帶限前提**：若 |ω|>ωm 時 X(ω)=0，取樣採 `fs>2fm`。等號須另查端點。

### 公式、符號與單位

`x[n]=x(nTs)`；`xp(t)=Σ x[n]δ(t−nTs)`；`fs=1/Ts`，`ωs=2πfs`。`Xp(ω)=(1/Ts)Σ X(ω−kωs)`。Ts（s）、fs 與 fm（Hz）、ωs 與 ωm（rad/s）。中央副本可由理想低通選出，增益 Ts。CTFT：ω（rad/s）；DTFT：Ω=ωTs（rad/sample），週期 2π。

### 圖表規格

兩排頻域圖的橫軸均為 ω（rad/s）。上排 X(ω) 是帶限三角示意頻譜，下排 Xp(ω) 分色顯示各副本和重疊總和，標 ±ωm、相鄰間距 ωs 與縮放 1/Ts。圖說「副本相隔取樣角頻率」。

### 互動規格

**取樣率 fs**，10–80 kHz，步進 1 kHz，預設 44 kHz；固定示意 fm=30 kHz。提供 44、60、72 kHz 快捷值，分別低於、等於、高於 2fm。以 Hz 換算計算 Ts 與 ωs，再重畫；副本權重用以秒計的 Ts。等號顯示端點提示。理想重建的增益 Ts 僅在可分離的示意情況下展示。

### 來源與講者備註

- **來源追溯**　[S05 頁 13–15、17–18、20–22、49](https://ocw.mit.edu/courses/6-003-signals-and-systems-fall-2011/12e6e5d7567fca2e993ef8563fef5a60_MIT6_003F11_lec21.pdf) · [Wiki](../wiki/concepts/sampling-and-aliasing.md)；[S02 投影片 9，等號措辭比較](https://ocw.mit.edu/courses/16-36-communication-systems-engineering-spring-2009/6c4e7183ae2d48e1b6b04a337b010529_MIT16_36s09_lec02.pdf) · [Wiki](../wiki/concepts/fourier-transform-properties.md)

依序辨認 x(t)、x[n]、xp(t)。等號補充：若 x(t)=sin(2πfm t)，以 fs=2fm 從零開始取樣，樣本全為 sin(πn)=0。

## 第 11 頁｜混疊：30 kHz 如何折返至 14 kHz

### 投影片正文

**混疊（Aliasing）**：取樣率不足時，頻譜副本可能重疊，不同頻率能落在同一取樣頻帶。

**例題**：週期 0.1 ms 的訊號，第三諧波 30 kHz，以 44 kHz 取樣。對實值輸入，其正頻率讀值為 **14 kHz**。

### 公式、符號與單位

基頻 `1/(0.1 ms)=10 kHz`；取樣頻帶邊界 `44/2=22 kHz`；正譜線 `30−44=−14 kHz`，實值訊號的共軛分量 `−30+44=+14 kHz`。共用 `Ts=1/fs`、`ωs=2πfs` 與副本係數 `1/Ts`。取樣前抗混疊低通理想截止為 ωs/2，取樣後重建低通通帶增益 Ts。

### 圖表規格

橫軸 f（kHz），縱向箭頭為譜線權重示意。分色標 ±30 kHz、±22 kHz 與 ±14 kHz；用箭頭連接原譜線和最近的中央副本。圖說「Hz 軸的平移間距為 fs；換成角頻率則為 2πfs」。另以小方塊標示前置抗混疊及後置重建。

### 互動規格

**取樣率 fs**延續第 10 頁的 10–80 kHz、步進 1 kHz。**重設 44 kHz**恢復教材例題。固定原諧波 30 kHz，更新中央頻帶與實值共軛譜線；恰落邊界的譜線合併標示並顯示端點提示。

### 來源與講者備註

- **來源追溯**　[S05 頁 27–34、37、54](https://ocw.mit.edu/courses/6-003-signals-and-systems-fall-2011/12e6e5d7567fca2e993ef8563fef5a60_MIT6_003F11_lec21.pdf) · [Wiki](../wiki/concepts/sampling-and-aliasing.md)；[S03 §3.4.1，頁 104](https://see.stanford.edu/materials/lsoftaee261/book-fall-07.pdf) · [Wiki](../wiki/concepts/frequency-response-and-filtering.md)

先計算奈奎斯特頻率與折返，再聲明正頻率讀值用到實值前提。取樣前低通用來避免折返，取樣後重建用來選副本並恢復尺度。過渡頻帶是工程延伸。

## 第 12 頁｜總結：從轉換對到工程應用

### 投影片正文

**復習：表示 → 計算 → 系統 → 取樣**

- 由 CTFT 讀出幅度與相位，再用轉換對和性質計算。
- 用頻率響應判讀濾波，用頻譜副本判讀混疊。
- 依來源 ID 回到教材的公式、推導或工程例題。

### 公式、符號與單位

`δ(t)↔1`；`e^(−at)u(t)↔1/(a+jω)`（a>0）；週期訊號在 `kω₀` 的脈衝權重為 `2πaₖ`。ω 與 ω₀ 為 rad/s。

### 圖表規格

上方以四節點復習圖串起表示、計算、系統、取樣。下方以五筆可點閱書目收尾，無新增座標圖。圖說「用同一套轉換慣例回查五篇教材」。

### 互動規格

無資料控制；提供五個原始教材連結。

### 來源與講者備註

- **來源追溯**　[S01 投影片 8.4、8.8、8.14–8.17](https://ocw.mit.edu/courses/res-6-007-signals-and-systems-spring-2011/60925ad5f87a9176dfc5ebb8afcf06e1_MITRES_6_007S11_lec08.pdf) · [Wiki](../wiki/concepts/continuous-time-fourier-transform.md)；[S02 投影片 6–7](https://ocw.mit.edu/courses/16-36-communication-systems-engineering-spring-2009/6c4e7183ae2d48e1b6b04a337b010529_MIT16_36s09_lec02.pdf) · [Wiki](../wiki/concepts/fourier-transform-properties.md)；[S03 §3.4–3.4.1](https://see.stanford.edu/materials/lsoftaee261/book-fall-07.pdf) · [Wiki](../wiki/concepts/frequency-response-and-filtering.md)；[S04 §4.2 例 8、9、11](https://ocw.mit.edu/courses/2-161-signal-processing-continuous-and-discrete-fall-2008/3ab918dbe6a0376dbd9216e404fee31b_fourier.pdf) · [Wiki](../wiki/concepts/fourier-transform-worked-examples.md)；[S05 頁 20–22、37、54](https://ocw.mit.edu/courses/6-003-signals-and-systems-fall-2011/12e6e5d7567fca2e993ef8563fef5a60_MIT6_003F11_lec21.pdf) · [Wiki](../wiki/concepts/sampling-and-aliasing.md)

用 Dirac 抽取及單邊指數帶回先前例題，再請學生指認濾波、取樣所用的兩個頻域關係。

### 投影片書目

- S01 Alan V. Oppenheim，MIT OpenCourseWare，Signals and Systems，Lecture 8: Continuous-Time Fourier Transform。[原始教材](https://ocw.mit.edu/courses/res-6-007-signals-and-systems-spring-2011/60925ad5f87a9176dfc5ebb8afcf06e1_MITRES_6_007S11_lec08.pdf)
- S02 Eytan Modiano，MIT OpenCourseWare，16.36 Communication Systems Engineering，Lecture 2 — The Sampling Theorem。[原始教材](https://ocw.mit.edu/courses/16-36-communication-systems-engineering-spring-2009/6c4e7183ae2d48e1b6b04a337b010529_MIT16_36s09_lec02.pdf)
- S03 Brad Osgood，Stanford EE 261，The Fourier Transform and its Applications。[原始教材](https://see.stanford.edu/materials/lsoftaee261/book-fall-07.pdf)
- S04 Derek Rowell，MIT 2.161，Introduction to Frequency Domain Processing。[原始教材](https://ocw.mit.edu/courses/2-161-signal-processing-continuous-and-discrete-fall-2008/3ab918dbe6a0376dbd9216e404fee31b_fourier.pdf)
- S05 Dennis Freeman，MIT 6.003，Lecture 21 — Sampling。[原始教材](https://ocw.mit.edu/courses/6-003-signals-and-systems-fall-2011/12e6e5d7567fca2e993ef8563fef5a60_MIT6_003F11_lec21.pdf)
