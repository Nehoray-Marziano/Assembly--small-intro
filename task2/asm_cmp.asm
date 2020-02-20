section .text
	global asm_cmp
	
asm_cmp:
	push	ebp
	mov	ebp, esp
	push ebx
	push ecx
	push edx
	mov	eax,-1
	mov edx, -1

.L2:
	add eax, 1
	add edx, 1
	mov ebx, eax
	mov ecx, edx
	add ebx, [ebp+8]
	add ecx, [ebp+12]
	movzx	ebx, BYTE [ebx]
	movzx   ecx, BYTE [ecx]
	cmp bl, 0
	je .check_str2
	cmp cl, 0
	je .check_str1	
	cmp bl,cl
	jl .is_smaller
	jg .is_bigger
	je .L2
	
	

.is_bigger:
	mov eax, 1
	jmp .finish

.is_smaller:
	mov eax, 2
	jmp .finish

.are_equal:
	mov eax, 0
	jmp .finish
	
.check_str1: ;we arrive here if str2 is over
	cmp ebx, 0
	je .are_equal
	jne .is_bigger

.check_str2: ;we arrive here if str1 is over
	cmp ecx, 0
	je .are_equal
	jne .is_smaller

.finish:
	pop edx
	pop ecx
	pop ebx
	mov esp, ebp
	pop ebp
	ret
