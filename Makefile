dist/scripts/app.js: $(shell find app/scripts -name \*.js)
	mkdir -p $(dir $@)
	cat $^ > $@

all:
	dist/scripts/app.js

.DEFAULT: all

.PHONY: all
