global	_ft_write

extern ___error
section	.text
_ft_write:
		mov rax, 0x2000004      ;code write
		syscall
		jc error
		ret
error:
		push rdi
		mov rdi, rax
		call ___error
		mov [rax], rdi			; in rdi ERRNO code, we move code in *rax
		pop rdi
		mov rax, -1
		ret