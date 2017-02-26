latex --src-specials --synctex=-1 论文模版示例.tex
makeindex 论文模版示例.idx
bibtex 论文模版示例.aux
latex --src-specials --synctex=-1 论文模版示例.tex
latex --src-specials --synctex=-1 论文模版示例.tex
dvipdfmx -p a4 论文模版示例.dvi