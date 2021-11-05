all: dg.dot.png dg.dot.svg

dg.dot.png: dg.dot
	dot -O$@ $<

dg.dot.svg: dg.dot
	dot -O$@ $<

