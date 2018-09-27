TEXS = TURBO_050618.tex

all: TURBO_050618.pdf

#cover.pdf: cover.tex
#latex cover.tex; dvipdf cover.dvi

TURBO_050618.pdf: $(TEXS)  TURBO_050618.bib
	pdflatex TURBO_050618; bibtex TURBO_050618; pdflatex TURBO_050618; pdflatex TURBO_050618

#report.pdf: report.tex paper.pdf cover.pdf doc_pdf/Appendix.pdf
#pdflatex report.tex;


clean: 
	 \rm -f *.bbl *.dvi *.log *.aux *.blg *.out *~ *.backup *.toc #TURBO_050618.pdf  
spotless: 
	 \rm -f *.bbl *.dvi *.log *.aux *.blg *.out TURBO_050618.pdf  


