.PHONY: all
all: pdf www

.PHONY: pdf
pdf: asm-manual.pdf

www: src/main.texi
	texi2any -o $@ --html $^ --css-ref='https://www.gnu.org/software/gnulib/manual.css'
	cp favicon.ico $@/favicon.ico

asm-manual.pdf: src/main.texi
	texi2dvi -o $@ -p $^