extern printf
extern exit
section .data
	original db 'nice',0
    reversed times $-original db 0
    fmt db "%s",3,0
    strlen equ $-original

section .text
	global _start
	
_start:
    push ebp
    mov ebp, esp
    push ebx
    push ecx
    push edx
    mov ebx, original ;a pointer to the last char in 'original'
    add ebx, 3
    mov ecx, reversed ;a pointer to the first char in 'reversed'
    mov eax, 0 ; this is a counter representing the number of iterations
    mov edx,5
    
.loop:
	inc eax ;increasing the counter
    cmp eax, 5 ;if we reached the end of the string (strlen iterations)
    JE .endloop
    mov dl,[ebx] ;saving the current letter to later put it in the reveresed version
    mov [ecx], dl 
    dec ebx ;moving to the next letter (from the end) of 'original'
    inc ecx ;moving to the next letter (from the beginning) of 'reversed'
    JMP .loop ;next iteration
	
.endloop:
    push reversed
    push fmt 
    call printf
    add esp, 8

.finish:
    pop edx
    pop ecx
    pop ebx
    pop ebp
    
    call exit


