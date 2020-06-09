# thesis: thesis.ps
all: thesis.pdf 

MAINFILES:= thesis.tex
# pdf: thesis.pdf

# thesis.ps : thesis.dvi
# 	dvips $? -o $@
# 	#dvips -Pcmz -Pamz -Ppdf -j0 $? -o $@

thesis.pdf : thesis.bib $(MAINFILES)
	pdflatex thesis.tex && bibtex thesis && pdflatex thesis

# thesis.dvi: thesis.tex
# 	latex $?; latex $?

.PHONY: clean
clean:
	$(RM) thesis.aux \
	thesis.out \
	thesis.log \
	thesis.pdf \
	thesis.lof \
	thesis.toc \
	abstract.aux \
	approval.aux \
	ack.aux \
	declaration.aux
	