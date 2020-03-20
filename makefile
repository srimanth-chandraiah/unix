all: README.md

README.md:
	touch README.md
	echo '# JHU unix Script' >> README.md
	echo $$(date) >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
clean:
	rm README.md
