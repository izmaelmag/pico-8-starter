.PHONY: run build

run:
	pico8 src/main.p8

build:
	mkdir -p build
	pico8 -export build/platformer src/main.p8
