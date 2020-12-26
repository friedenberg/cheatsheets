
.PHONY: all
all: $(patsubst src/%.rb,build/%.docset,$(wildcard src/*.rb))

build:
	mkdir build

build/%.docset: src/%.rb | build
	cp "$<" build
	BUNDLE_GEMFILE="../Gemfile" cd build && bundle exec -- cheatset generate "$(notdir $<)"
	rm "build/$(notdir $<)"

.PHONY: clean
clean:
	-rm -r build/
