#format is target-name: target dependencies
#{-tab-}actions

# All Targets
all: funcA

# Tool invocations
# Executable "hello" depends on the files hello.o and run.o.
funcA: func_A.o C_test.o
	gcc -m32 -g -Wall -o funcA C_test.o func_A.o

# Depends on the source and header files
C_test.o: C_test.c
	gcc -g -Wall -m32 -ansi -c -o C_test.o C_test.c 
 
func_A.o: func_A.asm
	nasm -g -f elf -w+all -o func_A.o func_A.asm


#tell make that "clean" is not a file name!
.PHONY: clean

#Clean the build directory
clean: 
	rm -f *.o funcA