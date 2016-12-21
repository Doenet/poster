poster.pdf: poster.tex qrcode.pdf left-column.tex middle-column.tex right-column.tex beamerthemeLankton.sty
	pdflatex poster.tex
	pdflatex poster.tex

qrcode.svg: Makefile
	qrencode -t svg -o $@ HTTPS://CURATEDCOURSES.ORG/

qrcode.pdf: qrcode.svg
	inkscape -D -z --file=$< --export-pdf=$@
