all: README.md

README.md:
	echo '# RH UNIX WORKBENCH' > README.md
	echo '## Peer Graded assignment ##' >> README.md
	echo '* The time : $(shell date +%Y-%m-%d:%H:%M:%S) *' >> README.md
	echo '* $(shell wc -l < guessinggame.sh) lines in guessinggame.sh *' >> README.md
clean:
	rm README.md
