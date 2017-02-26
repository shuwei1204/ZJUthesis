FileName=论文模版示例
PDFPara=-p a4 
TEXPara=--src-specials --synctex=-1

$(FileName).pdf : $(FileName)
	dvipdfmx $(PDFPara) $(FileName).dvi

$(FileName).dvi : $(FileName).tex
	latex $(TEXPara) $(FileName)
	makeindex $(FileName).idx
	bibtex $(FileName) 
	latex $(TEXPara) $(FileName)
	latex $(TEXPara) $(FileName)	

clear :
	-del $(FileName).aux
	-del $(ileName).log
	-del $(FileName).pdf
	-del $(FileName).toc
	-del $(FileName).idx
	-del $(FileName).ind
	-del $(FileName).out
	-del $(FileName).bbl
	-del $(FileName).lof
	-del $(FileName).lot
	-del $(FileName).ilg
	-del $(FileName).blg
	-del $(FileName).dvi
