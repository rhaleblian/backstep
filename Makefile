all: dg.dot.png dg.dot.svg

dg.dot.png: dg.dot
	dot -Tpng -O $<

dg.dot.svg: dg.dot
	dot -Tsvg -O $<

