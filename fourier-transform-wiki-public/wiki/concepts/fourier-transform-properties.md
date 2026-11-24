# 傅立葉轉換性質

## 公式慣例（S01，投影片 8.4；S02，投影片 3）

Wiki 使用 S01 的角頻率 ω（rad/s）：正轉換核為 `e^(−jωt)`，反轉換核為 `e^(+jωt)`，反轉換積分外乘 `1/(2π)`。S02 使用一般頻率 f（Hz），正、反轉換核分別為 `e^(−j2πft)`、`e^(+j2πft)`，積分外的係數均為 1。

令 `ω = 2πf`，便有 `X_ω(ω) = X_f(ω/(2π))`。反轉換換元時 `df = dω/(2π)`，因此換成角頻率後會出現積分外的 `1/(2π)`。下列轉換對把原文的 X(f) 與統一後的 X(ω) 分開標示。

## 線性（Linearity）（S02，投影片 6）

- 原文 f 慣例：`αx₁(t) + βx₂(t) ↔ αX₁(f) + βX₂(f)`。
- Wiki ω 慣例：`αx₁(t) + βx₂(t) ↔ αX₁(ω) + βX₂(ω)`。

先分別轉換，再依原權重加總。

## 時間平移（Time Shifting）（S02，投影片 6）

- 原文 f 慣例：`x(t−τ) ↔ X(f)e^(−j2πfτ)`。
- Wiki ω 慣例：`x(t−τ) ↔ X(ω)e^(−jωτ)`。

延遲 τ 在頻域乘上一個幅度為 1 的相位因子。

## 時間尺度變換（Time Scaling）（S02，投影片 6）

- 原文 f 慣例：`x(at) ↔ X(f/a)/|a|`。
- Wiki ω 慣例：`x(at) ↔ X(ω/a)/|a|`。

a 為非零實數。換元 u = at；a 為負時積分端點反向，故係數為 1/|a|。

## 摺積定理（Convolution）（S02，投影片 6）

- 原文 f 慣例：`(x*y)(t) ↔ X(f)Y(f)`。
- Wiki ω 慣例：`(x*y)(t) ↔ X(ω)Y(ω)`。

兩種慣例的時域摺積都對應頻域逐點相乘，係數為 1。

## 頻率平移（Frequency Shifting）（S02，投影片 7）

- 原文 f 慣例：`x(t)e^(+j2πf₀t) ↔ X(f−f₀)`。
- Wiki ω 慣例：`x(t)e^(+jω₀t) ↔ X(ω−ω₀)`。

ω₀ = 2πf₀。時域乘上複指數，頻譜沿角頻率軸平移 ω₀。

### 摺積常數的核對（由 S02 投影片 3、6 及 S01 投影片 8.4 換元）

時域摺積在 ω 慣例下仍是 `X(ω)Y(ω)`。反向的對應是時域相乘：`x(t)y(t) ↔ (X*Y)(ω)/(2π)`，此處的摺積在角頻率域上積分。這個係數來自頻域摺積積分的換元：若其積分變數是 ν（Hz），令 η = 2πν，則 `dν = dη/(2π)`。

## 來源

- S02，MIT OpenCourseWare，Eytan Modiano，16.36 Communication Systems Engineering，Lecture 2 — The Sampling Theorem。[原始 PDF](https://ocw.mit.edu/courses/16-36-communication-systems-engineering-spring-2009/6c4e7183ae2d48e1b6b04a337b010529_MIT16_36s09_lec02.pdf) · [來源紀錄](../../raw/S02.md) · [證據卡](../../cards/S02.md)
- S01，MIT OpenCourseWare，Alan V. Oppenheim，Signals and Systems，Lecture 8 — Continuous-Time Fourier Transform。[來源紀錄與原始網址](../../raw/S01.md) · [轉換定義](continuous-time-fourier-transform.md)
