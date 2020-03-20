all: README.md

README.md:
	touch README.md
	echo '# guessinggame.sh ' >> README.md
	echo $$(date) >> README.md
	printf 'Number of lines in the script: ' >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
