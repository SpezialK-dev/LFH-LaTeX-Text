# compilation everything 
all: compile_tex

# TEX stuff
TEXTFILES = src/main.tex

compile_tex: 
	latexmk -pdf  -silent -synctex=1 $(TEXTFILES)


clean:
	rm  *.aux *.blg *.bbl *.bcf *.fdb_latexmk *.fls *.log *.synctex.gz *.toc *.run.xml
