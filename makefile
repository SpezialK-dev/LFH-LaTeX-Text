# compilation everything 
all: compile_tex

# TEX stuff
TEXTFILES = src/main.tex

compile_tex: 
	latexmk -pdf  -silent -synctex=1 $(TEXTFILES)
