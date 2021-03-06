#!/usr/bin/make -f

default: test

test: build
	go test -short

cover: build
	go test -coverprofile=coverage.out
	go tool cover -html=coverage.out

build:
	go build

document:
	go install github.com/robertkrimen/godocdown/godocdown
	godocdown > README.md
