STYLE=beamercolorthemec3bi.sty beamerinnerthemec3bi.sty beamerouterthemec3bi.sty  beamerthemec3bi.sty beamerthemec3bi.sty
TARGET=c3bi-example.pdf
LATEXOPTION=-shell-escape -interaction=nonstopmode -file-line-error
all: $(TARGET)

%.pdf : %.tex $(STYLE)
	pdflatex $(LATEXOPTION) $< > /dev/null
	pdflatex $(LATEXOPTION) $< > /dev/null
	pdflatex $(LATEXOPTION) $<

clean:
	rm -f *.lbf* *.nav *.log *.snm *.toc *.aux *.out

init : clean
	rm -f $(TARGET)
