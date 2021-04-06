global	_ft_read

extern ___error
section	.text
_ft_read:
		mov rax, 0x2000003      ;code read
		syscall
		jc error
		ret
error:
		push rdi
		mov rdi, rax
		call ___error
		mov [rax], rdi			;copy data from register to memory area
		pop rdi
		mov rax, -1
		ret