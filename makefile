# compilation everything
all: compile_tex

# TEX stuff
TEXTFILES = src/main.tex

compile_tex:
	latexmk -lualatex -pdf -gg -cd  $(TEXTFILES)

help:
	echo "available commands "
	echo "clean : removes some files from your disk warning calls rm with * on some regex "

clean:
	latexmk -cd -C $(TEXTFILES)
