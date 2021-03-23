.PHONY: proposal.pdf bylaws.pdf regulation.pdf

all: diagram.pdf proposal.pdf regulation.pdf bylaws.pdf

diagram.pdf: diagram.tex
	pdflatex diagram.tex
	rm -f diagram.aux diagram.log

proposal.pdf: proposal.md references.bib
	pandoc -o proposal.pdf -N --filter pandoc-citeproc proposal.md

online-proposal.pdf: online-proposal.md references.bib
	pandoc -o online-proposal.pdf --pdf-engine=xelatex online-proposal.md

regulation.pdf: requirements.md
	pandoc -o requirements.pdf requirements.md

bylaws.pdf: bylaws.md
	pandoc -o bylaws.pdf bylaws.md
