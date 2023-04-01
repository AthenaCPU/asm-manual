.PHONY: all
all: pdf www

.PHONY: pdf
pdf: asm-manual.pdf

www: src/main.texi
	texi2any -o $@ --html $^

asm-manual.pdf: src/main.texi
	texi2dvi -o $@ -p $^