TARGETS := images/dg.dot.png images/dg.dot.svg

all: $(TARGETS)

images/dg.dot.png: dg.dot
	dot -Tpng -O $<

images/dg.dot.svg: dg.dot
	dot -Tsvg -O $<

clean:
	- rm $(TARGETS)

