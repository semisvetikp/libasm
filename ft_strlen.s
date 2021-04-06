global	_ft_strlen

section	.text				;the result of processing lines is placed in the code section
_ft_strlen:
		mov rax, -1
cycle:	inc rax	
		mov cl, byte [rdi + rax]
		cmp cl, 0
		jne	cycle
		ret