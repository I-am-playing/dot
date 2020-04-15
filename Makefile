.PHONY: all
all: bin/output.png
	@echo > /dev/null

#| bin
#	dot -Tpng input.dot > bin/output.png

bin/output.png: input.dot | bin
	dot -Tpng $< > $@

bin:
	mkdir -p bin

.PHONY: clean
clean:
	rm -rf bin
