# compilation everything
all: compile_tex

# TEX stuff
TEXTFILES = src/main.tex

compile_tex:
	latexmk -pdf -gg -cd  $(TEXTFILES)

help:
	echo "available commands "
	echo "arial : compiles via lualatex to support arial fonts"
	echo "clean : removes some files from your disk warning calls rm with * on some regex "

arial:
	lualatex $(TEXTFILES)

clean:
	latexmk -cd -C $(TEXTFILES)
