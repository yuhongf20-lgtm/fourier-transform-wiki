# 傅立葉轉換 LLM Wiki

**進度：已人工核准並正式 ingest 5 篇，最低要求 5 篇。**

目標讀者：有微積分基礎的大學生。語言：繁體中文，保留英文專業術語。

## 已建立知識

- [連續時間傅立葉轉換](concepts/continuous-time-fourier-transform.md)涵蓋級數與轉換、時域與頻域、正反轉換、單邊衰減指數例題、週期訊號頻譜。

- [傅立葉轉換性質](concepts/fourier-transform-properties.md)涵蓋線性、時間平移、時間尺度變換、摺積及頻率平移。

- [頻率響應與濾波](concepts/frequency-response-and-filtering.md)涵蓋低通、帶通、高通及陷波。

- [傅立葉轉換計算例題](concepts/fourier-transform-worked-examples.md)涵蓋矩形脈衝、主瓣、Dirac 脈衝及單邊衰減指數。

- [取樣、重建與混疊](concepts/sampling-and-aliasing.md)涵蓋取樣模型、頻譜複製、帶限重建、混疊與抗混疊。

## 待建立知識

- 更多基本計算例題、訊號分析與工程應用。

## 公式慣例

S01 使用角頻率 ω，正轉換為負指數，反轉換為正指數並乘 1/(2π)。Wiki 教學統一沿用 S01 的 ω 慣例。S02 原文使用 f，依 ω = 2πf 換元，並保留原式。S03 原文使用 s，依 ω = 2πs 換元。兩篇均保留原式，S04 的 Ω 與 Wiki 的 ω 均為角頻率，X(jΩ) 對應 X(ω)。S05 使用連續角頻率 ω（rad/s）及離散角頻率 Ω（rad/sample），兩者以 Ω = ωTs 對應。

## 已核准資料來源

- **S01** MIT OpenCourseWare，Signals and Systems, Lecture 8: Continuous-Time Fourier Transform，Alan V. Oppenheim。[原始教材頁](https://ocw.mit.edu/courses/res-6-007-signals-and-systems-spring-2011/resources/mitres_6_007s11_lec08-1/) · [來源紀錄](../raw/S01.md) · [證據卡](../cards/S01.md) · [核准紀錄](log.md)
- **S02** MIT OpenCourseWare，16.36 Communication Systems Engineering，Lecture 2 — The Sampling Theorem，Eytan Modiano。[原始 PDF](https://ocw.mit.edu/courses/16-36-communication-systems-engineering-spring-2009/6c4e7183ae2d48e1b6b04a337b010529_MIT16_36s09_lec02.pdf) · [來源紀錄](../raw/S02.md) · [證據卡](../cards/S02.md)
- **S03** Stanford EE 261，The Fourier Transform and its Applications，Brad Osgood。[原始 PDF](https://see.stanford.edu/materials/lsoftaee261/book-fall-07.pdf) · [來源紀錄](../raw/S03.md) · [證據卡](../cards/S03.md)
- **S04** MIT 2.161，Introduction to Frequency Domain Processing，Derek Rowell。[原始 PDF](https://ocw.mit.edu/courses/2-161-signal-processing-continuous-and-discrete-fall-2008/3ab918dbe6a0376dbd9216e404fee31b_fourier.pdf) · [來源紀錄](../raw/S04.md) · [證據卡](../cards/S04.md)
- **S05** MIT 6.003，Lecture 21 — Sampling，Dennis Freeman。[教材頁](https://ocw.mit.edu/courses/6-003-signals-and-systems-fall-2011/resources/lecture-21-sampling/) · [來源紀錄](../raw/S05.md) · [證據卡](../cards/S05.md)
