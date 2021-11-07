TARGETS := dg.dot.png dg.dot.svg

all: $(TARGETS)

dg.dot.png: dg.dot
	dot -Tpng -O $<

dg.dot.svg: dg.dot
	dot -Tsvg -O $<

clean:
	- rm $(TARGETS)

