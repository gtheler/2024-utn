
machete: script borracho
	pandoc -s -f markdown+smart -t beamer+smart machete.md --pdf-engine=xelatex -o machete.pdf

script:
	pandoc -s -f markdown+smart  --pdf-engine=xelatex  script.md -o script.pdf

cosas:
	pandoc -s -f markdown+smart  --pdf-engine=xelatex  cosas.md -o cosas.pdf

10tips:
	pandoc -s -f markdown+smart  --pdf-engine=xelatex  10tips.md -o 10tips.pdf

borracho:
	pandoc -s -f markdown+smart  --pdf-engine=xelatex  borracho.md -o borracho.pdf

		
.PHONY: machete script clean

all: machete script cosas 10tips
