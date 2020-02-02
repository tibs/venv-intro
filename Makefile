# This version of the Makefile assumes that pandoc and (enough of) TeX are
# available.

.PHONY: default
default: html pdf

.PHONY: html
html:
	rst2html.py venv-intro-notes.rst venv-intro-notes.html
	rst2html.py venv-intro-slides.rst venv-intro-slides.html

# We also make the venv-intro-notes as PDF, because we can and it might be useful.
.PHONY: pdf
pdf: slides
	pandoc venv-intro-notes.rst -o venv-intro-notes.pdf -V papersize:a4

# The available aspect ratio of slides (for beamer only) are 1610 for 16:10,
# 169 for 16:9, 149 for 14:9, 141 for 1.41:1, 54 for 5:4, 43 for 4:3 which is
# the default, and 32 # for 3:2. It's probably enough to go for the following
# pair of resolutions.
.PHONY: slides
slides:
	pandoc venv-intro-slides.rst -t beamer -o venv-intro-slides-4x3.pdf -V aspectratio:43
	pandoc venv-intro-slides.rst -t beamer -o venv-intro-slides-16x9.pdf -V aspectratio:169

.PHONY: 43
43:
	pandoc venv-intro-slides.rst -t beamer -o venv-intro-slides-4x3.pdf -V aspectratio:43
	open venv-intro-slides-4x3.pdf


.PHONY: clean
clean:
	rm -f *.html

.PHONY: help
help:
	@echo 'make         same as: make html pdf'
	@echo 'make html    create HTML files using rst2html'
	@echo 'make pdf     create PDF files using pandoc and LaTeX'
	@echo 'make slides  just create the PDF slides'
	@echo 'make clean   delete HTML files'
