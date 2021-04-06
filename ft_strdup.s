global	_ft_strdup

extern _malloc
extern _ft_strlen
extern _ft_strcpy
section	.text
_ft_strdup:
		call _ft_strlen
		add rax, 1
		push rdi
		mov rdi, rax
		call _malloc
		test  rax, rax		;analog cmp eax, 0, but need in less memory
        jz    fail_exit		;jz -> ZF flag if cmp == 0
		pop rsi
		mov rdi, rax
		call _ft_strcpy
		ret
fail_exit: 
		mov  rax, 0
        ret