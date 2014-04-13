FILENAME=OA

# Parts Directory
PARTSDIR=./partes/

all: $(FILENAME).pdf clean open

$(FILENAME).pdf: $(FILENAME).tex
	pdflatex $(FILENAME).tex
	#bibtex $(FILENAME).aux 
	#pdflatex $(FILENAME).tex
	#pdflatex $(FILENAME).tex

clean:
	rm -f *.aux	*.bbl	*.blg	*.log	*.out	*.toc	*.lof	*.lot	*.nav	*.snm

open:
	open $(FILENAME).pdf
