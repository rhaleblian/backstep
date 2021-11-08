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

dot: $(TARGETS)

images/dg.dot.png: dg.dot
	dot -Tpng -O $<

images/dg.dot.svg: dg.dot
	dot -Tsvg -O $<
