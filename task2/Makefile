
all: scmp

scmp: scmp.o cmpstr.o asm_cmp.o
	gcc -g -m32 -Wall -o scmp scmp.o cmpstr.o asm_cmp.o

scmp.o: scmp.c
	gcc -m32 -g -Wall -ansi -c -o scmp.o scmp.c

cmpstr.o: cmpstr.c
	gcc -m32 -g -Wall -ansi -c -o cmpstr.o cmpstr.c
	
asm_cmp.o: asm_cmp.asm
	nasm -g -f elf -w+all -o asm_cmp.o asm_cmp.asm
	
.PHONY: clean

clean:
	rm -f *.o scmp
