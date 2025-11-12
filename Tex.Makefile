# Makefile for LaTeX — automatically detects the main .tex file

# Automatically detect the first .tex file in the folder
MAIN    := $(basename $(firstword $(wildcard *.tex)))
OUT     := $(MAIN).pdf

# Default target
all: $(OUT)

# Compile to PDF
$(OUT): $(MAIN).tex
	@echo "Compiling $(MAIN).tex..."
	pdflatex -interaction=nonstopmode -halt-on-error $(MAIN).tex
	bibtex $(MAIN) || true
	pdflatex -interaction=nonstopmode -halt-on-error $(MAIN).tex
	pdflatex -interaction=nonstopmode -halt-on-error $(MAIN).tex
	@echo "Output written to $(OUT)"

# Clean up auxiliary files
clean:
	@echo "Cleaning..."
	@rm -f *.aux *.log *.bbl *.blg *.out *.toc *.lof *.lot *.fls *.fdb_latexmk *.synctex.gz

# Remove also the PDF
distclean: clean
	@rm -f $(OUT)
