RAW_JS = $(shell find app/scripts -name \*.js)
JSX_JS = $(addprefix .tmp/jsx/,$(shell cat app/jsmanifest))

.tmp/jsx/%.js: $(RAW_JS)
	@echo Copying jsx
	mkdir -p .tmp/jsx
	jsx app/scripts .tmp/jsx

dist/scripts/app.js: .tmp/jsx/%.js
	mkdir -p .tmp/jsx
	mkdir -p $(dir $@)
	cat $(JSX_JS) > $@

dist/css/app.css: $(shell find app/sass -name \*.scss)
	mkdir -p $(dir $@)
	sass app/sass/app.scss:$@

dist/index.html: app/index.html
	mkdir -p $(dir $@)
	cp $^ $@

clean:
	rm -rf .tmp/* dist/*

all: dist/scripts/app.js dist/css/app.css dist/index.html

.DEFAULT: all

.PHONY: all
