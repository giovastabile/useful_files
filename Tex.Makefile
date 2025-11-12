# LaTeX Makefile
FILE=Valentin
FILE_ARXIV=letterhead_uniurb

all: $(FILE).pdf

.PHONY: clean $(FILE).pdf

clean:
	rm -f *.aux
	rm -f *.auxlock
	rm -f *.bak
	rm -f *.bbl
	rm -f *.blg
	rm -f *.brf
	rm -f *.dep
	rm -f *.dvi
	rm -f *.gz
	rm -f *.idx
	rm -f *.ilg
	rm -f *.ind
	rm -f *.loa
	rm -f *.lof
	rm -f *.log
	rm -f *.lot
	rm -f *.mat
	rm -f *.nav
	rm -f *.out
	rm -f *.pdfsync
	rm -f *.ps
	rm -f *.snm
	rm -f *.spl
	rm -f *.thm
	rm -f *.toc
	rm -f *.xdv
	rm -f *.synctex.gz
	rm -f *.lox
	rm -f *.nlo
	rm -f *.fls
	rm -f *.nls
	rm -f *.fdb_latexmk
	rm -f *.abs
	rm -f ${FILE}.pdf

arxiv:
	pdflatex -no-pdf --interaction=nonstopmode ${FILE_ARXIV} -recorder
	-bibtex ${FILE_ARXIV}
	pdflatex -no-pdf --interaction=nonstopmode ${FILE_ARXIV} -recorder
	pdflatex --interaction=nonstopmode ${FILE_ARXIV} -recorder



$(FILE).pdf: $(FILE).tex
	pdflatex -no-pdf --interaction=nonstopmode ${FILE}
	-bibtex ${FILE}
	pdflatex -no-pdf --interaction=nonstopmode ${FILE}
	pdflatex --interaction=nonstopmode ${FILE}
	rm -f *.aux
	rm -f *.auxlock
	rm -f *.bak
	rm -f *.bbl
	rm -f *.blg
	rm -f *.brf
	rm -f *.dep
	rm -f *.dvi
	rm -f *.gz
	rm -f *.idx
	rm -f *.ilg
	rm -f *.ind
	rm -f *.loa
	rm -f *.lof
	rm -f *.log
	rm -f *.lot
	rm -f *.mat
	rm -f *.nav
	rm -f *.out
	rm -f *.pdfsync
	rm -f *.ps
	rm -f *.snm
	rm -f *.spl
	rm -f *.thm
	rm -f *.toc
	rm -f *.xdv
	rm -f *.lox
	rm -f *.nlo
	rm -f *.fls
	rm -f *.nls
	rm -f *.fdb_latexmk
	rm -f *.abs

