src 		= Module.md
target 		= Module.html
targetpath	= $(abspath $(target))
template 	= LecNotes
css 		= ../../css/master.css
mathjax		= https://c328740.ssl.cf1.rackcdn.com/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
browserprefix	= file://
browser 	= maxthon
browsertarget	= $(browserprefix)$(targetpath:C\:=)
up 		= ../../schedule.html
next 		= ../02/Module.html

.PHONY: all compile preview clean

all: compile

compile: $(target)

$(target): $(src)
	pandoc -s --toc --mathjax=$(mathjax) \
	--template=$(template) --css=$(css) \
	--variable back=$(back) \
	--variable next=$(next) \
	--variable up=$(up) \
	-o $(target) -S $(src) 

preview: compile
	$(browser) $(browsertarget)

clean:
	if [ -f $(target) ]; then rm $(target); fi

