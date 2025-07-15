# compilation everything 
all: compile_tex

# TEX stuff
TEXTFILES = src/main.tex

compile_tex: 
	latexmk -pdf  -silent -synctex=1 $(TEXTFILES)

help:
	echo "available commands "
	echo "arial : compiles via lualatex to support arial fonts"
	echo "clean : removes some files from your disk warning calls rm with * on some regex "

arial:
	lualatex $(TEXTFILES)

clean:
	rm  *.aux *.blg *.bbl *.bcf *.fdb_latexmk *.fls *.log *.synctex.gz *.toc *.run.xml *.out *.bcf-SAVE-ERROR
