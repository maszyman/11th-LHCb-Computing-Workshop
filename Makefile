NOW := $(shell date --rfc-3339=date)
fig:
	pdflatex main.tex
	cp main.pdf mainWithFigures.pdf
        xelatex Szymanski_ComputingWorkshop_20171123
draft:
	pdflatex "\def\classopts{draft}\input{main}"
	cp main.pdf mainDraft.pdf
clean:
	rm -f *.aux *.blg *.out *.bbl *.log
