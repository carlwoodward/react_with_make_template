all:
	mkdir -p dist/scripts
	cat $(shell find app/scripts -name \*.js) > dist/scripts/app.js

.PHONY: all
