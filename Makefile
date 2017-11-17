# Uso esta plantilla para hacer el pdf
# https://github.com/Wandmalfarbe/pandoc-latex-template
# Hace falta tener instalado Pandoc y LaTex

OUT="pdf"
sources = Tema_2_Procesos_e_Hilos.md  maxi_28_37.md

all: $(OUT)/Tema2.pdf

$(OUT)/Tema2.pdf : $(sources)
	pandoc \
		--from markdown --template eisvogel \
		-f markdown $< \
		--latex-engine=xelatex \
		-o $@

clean:
	rm -f $(OUT)