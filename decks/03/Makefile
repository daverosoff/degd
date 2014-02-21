target		= Deck.pdf
intermed	= Deck.tex
knitted		= Deck.md
src		= Deck.Rmd
template	= beamer.latex
fontsize	= 11pt
theme		= Szeged
colortheme	= wolverine
fonttheme	= structurebold
listings	= R
numbersections	= 
mathjax		= https://c328740.ssl.cf1.rackcdn.com/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
browser		= SumatraPDF
rscript		= Rscript.exe
rcommand	= -e 'library(knitr); knit(\"$(src)\", \"$(knitted)\")'

.PHONY: all compile preview clean texonly

all: compile

compile: $(target)

texonly: $(intermed)

preview: compile
	$(browser) $(target)

$(target): $(src)
	$(rscript) $(rcommand)
	pandoc -s -t beamer --variable theme=$(theme) \
	--variable colortheme=$(colortheme) \
	--variable fonttheme=$(fonttheme) \
	--variable listings=$(listings) \
	--variable fontsize=$(fontsize) \
	--variable numbersections=$(numbersections) \
	--variable header-includes="\usepackage{rosoff}" \
	--variable include-pkg="\usepackage{xcolor}" \
	--variable include-pkg="\usepackage{siunitx}" \
	--mathjax=$(mathjax) --template=$(template) \
	-o $(target) -S $(knitted)

$(intermed): $(src)
	$(rscript) $(rcommand)
	pandoc -s -t beamer --variable theme=$(theme) \
	--variable colortheme=$(colortheme) \
	--variable fonttheme=$(fonttheme) \
	--variable listings=$(listings) \
	--variable fontsize=$(fontsize) \
	--variable numbersections=$(numbersections) \
	--variable header-includes="\usepackage{rosoff}" \
	--variable include-pkg="\usepackage{xcolor}" \
	--variable include-pkg="\usepackage{siunitx}" \
	--mathjax=$(mathjax) --template=$(template) \
	-o $(intermed) -S $(knitted)

clean:
	rm $(knitted) $(intermed) $(target) figure/*
	
