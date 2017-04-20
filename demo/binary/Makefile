.PHONY: all build

PREFIX ?= /usr/local

all: build

build: hello

hello: hello.go
	go build -o $@

install: hello
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp $< $(DESTDIR)$(PREFIX)/bin/$<
