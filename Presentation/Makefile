TEXS = *.tex

all: Presentation.pdf

#cover.pdf: cover.tex
#latex cover.tex; dvipdf cover.dvi

Presentation.pdf: $(TEXS)
	pdflatex Presentation; bibtex Presentation; pdflatex Presentation; pdflatex Presentation

#report.pdf: report.tex paper.pdf cover.pdf doc_pdf/Appendix.pdf
#pdflatex report.tex;


clean: 
	 \rm -f *.bbl *.dvi *.log *.aux *.blg *.out #Presentation.pdf  
spotless: 
	 \rm -f *.bbl *.dvi *.log *.aux *.blg *.out Presentation.pdf  

