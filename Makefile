poster.pdf: poster.tex qrcode.pdf left-column.tex middle-column.tex right-column.tex beamerthemeLankton.sty
	pdflatex poster.tex
	pdflatex poster.tex

qrcode.svg: Makefile
	qrencode -t svg -o $@ HTTPS://DOENET.ORG/

qrcode.pdf: qrcode.svg
	inkscape -D -z --file=$< --export-pdf=$@

clean:
	rm -f *~ *.vrb *.toc *.aux *.out *.pyg.lst *.png *.svg *.log *.snm *.nav
