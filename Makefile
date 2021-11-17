TARGETS := images/dg.dot.png images/dg.dot.svg

ci:
#	Previous
#	cat .previous/previous.cfg
	echo $PWD

check:
	true

distcheck:
	true

clean:
	- rm $(TARGETS)

