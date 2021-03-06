SHELL:=/bin/bash
DIST_DIR=dist
.PHONY: all clean lint build
all: clean lint build
clean:
	rm -rf "$(DIST_DIR)"
lint:
	npx eslint src/burlesco.user.js
build: clean
	mkdir -p "$(DIST_DIR)"
	python3 build.py src/burlesco.user.js > "$(DIST_DIR)/burlesco.user.js"
