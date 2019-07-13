.PHONY: build
build:
	powerpc-eabi-gcc -O3 -c -o build/lib.o source/lib.c
	powerpc-eabi-ar rcs build/lib.a build/lib.o
	romhack build