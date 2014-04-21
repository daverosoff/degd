DUEDATE		= "Wednesday, April 23"
COURSE		= "Math 352"
TERM		= "Spring 2014"
template 	= workshop.latex
baseheaderlevel = 1
src 		= PhasePortraits.Rmd
knitted		= PhasePortraits.md
intermed 	= PhasePortraits.tex
target 		= PhasePortraits.pdf
targetpath	= $(abspath $(target))
browser		= SumatraPDF
editor		= sublime_text
rscript 	= Rscript.exe
rcommand	= -e 'library(knitr); knit(\"$(src)\", \"$(knitted)\")'
solrcommand	= -e 'library(knitr); knit(\"$(solsrc)\", \"$(solknitted)\")'

.PHONY: all clean compile texonly preview preview_tex

all: $(intermed) $(target) 

compile: $(target) 

texonly: $(intermed) 

$(target): $(src)
	$(rscript) $(rcommand)
	pandoc -s --variable DUEDATE=$(DUEDATE) \
	--variable COURSE=$(COURSE) --variable TERM=$(TERM) \
	--variable header-includes="\usepackage{rosoff}" \
	--variable header-includes="\usepackage{pgfplots}" \
	--template=$(template) --base-header-level=$(baseheaderlevel) \
	-S -o $(target) $(knitted)

$(intermed): $(src)
	$(rscript) $(rcommand)
	pandoc -s --variable DUEDATE=$(DUEDATE) \
	--variable COURSE=$(COURSE) --variable TERM=$(TERM) \
	--variable header-includes="\usepackage{rosoff}" \
	--variable header-includes="\usepackage{pgfplots}" \
	--template=$(template) --base-header-level=$(baseheaderlevel) \
	-S -o $(intermed) $(knitted)

preview: $(target)
	$(browser) $(targetpath)

preview_tex: $(intermed)
	$(editor) $(intermed)

clean:
	if [ -f $(intermed) ]; then rm $(intermed); fi
	if [ -f $(target) ]; then rm $(target) ; fi
	if [ -f $(knitted) ]; then rm $(knitted); fi