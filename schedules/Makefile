base 			= $(abspath main.html)
browser 		= maxthon
browserprefix 		= file://
mathjax			= https://c328740.ssl.cf1.rackcdn.com/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
up			= ../index.html
css 			= ../css/master.css
template 		= LecNotes

.PHONY: all compile clean preview 

.SUBLIME_TARGETS: all compile preview clean main.html problems.html

compile: main.html problems.html 

all: compile

main.html: main.md
	pandoc -s --template=$(template) --css=$(css) \
	--mathjax=$(mathjax) --variable up=$(up) \
	-o main.html -S main.md

problems.html: problems.md
	pandoc -s --template=$(template) --css=$(css) \
	--mathjax=$(mathjax) --variable up=main.html \
	-o problems.html -S problems.md

preview: main.html
	$(browser) $(browserprefix)$(base)$

clean:
	rm main.html
	rm problems.html
