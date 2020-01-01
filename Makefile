poster.pdf: poster.tex doenet-logo.pdf qrcode.pdf left-column.tex middle-column.tex right-column.tex beamerthemeLankton.sty
	pdflatex poster.tex
	pdflatex poster.tex

doenet-logo.pdf: media/Doenet_Logo_text_as_object.svg
	inkscape "media/Doenet_Logo_text_as_object.svg" --export-pdf="doenet-logo.pdf" --export-area-snap

qrcode.svg: Makefile
	qrencode -t svg -o $@ HTTPS://DOENET.ORG/

qrcode.pdf: qrcode.svg
	inkscape -D -z --file=$< --export-pdf=$@

clean:
	rm -f *~ *.vrb *.toc *.aux *.out *.pyg.lst *.png *.svg *.log *.snm *.nav
