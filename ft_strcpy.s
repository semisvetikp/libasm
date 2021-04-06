global	_ft_strcpy		;directive, externally visible global label

section	.text			;data image containing commands
_ft_strcpy:
		mov rcx, -1
cycle:	inc rcx	
		mov dl, byte [rsi + rcx] 
		mov byte [rdi + rcx], dl
		cmp dl, 0
		jne	cycle
		mov rax, rdi
		ret