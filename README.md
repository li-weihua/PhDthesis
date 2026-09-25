# 博士学位论文：LHC 上 W 对及 Higgs 对伴随喷注产生的研究

本仓库收录李伟华博士于 2015 年在中国科学技术大学完成的博士学位论文 LaTeX 源文件及生成的 PDF。论文研究两个主题：LHC 上 $W^+W^-+\mathrm{jet}$ 产生过程的次领头阶 QCD 和电弱修正，以及双 Higgs 二重态模型中矢量玻色子聚合产生 Higgs 对的次次领头阶 QCD 修正。

这是原论文的微小修订版，主要修正文字与排版问题，并更新编译脚本以适配较新的 TeX 环境。

论文 PDF：[正文](main.pdf) · [独立封皮](cover.pdf)。

## 编译

需要 XeLaTeX、`latexmk`、Ghostscript（`gs`）以及模板使用的 Times New Roman、Courier New、Arial 和 SimHei 字体。在仓库根目录运行：

```sh
./make.sh
```

脚本生成 `main.pdf`（论文正文）和 `cover.pdf`（独立封皮）。运行 `./clean.sh` 可清理编译辅助文件，同时保留 PDF。

论文入口是 `main.tex`；各章节位于 `chapter/`，插图位于 `figures/`。当前正文使用 `chapter/bib.tex` 中的手写参考文献。
