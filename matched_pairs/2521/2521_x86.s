main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	lea	rsi, -16[rbp]
	lea	rcx, -12[rbp]
	lea	rdx, -8[rbp]
	lea	rax, -4[rbp]
	mov	r8, rsi
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -4[rbp]
	add	eax, edx
	mov	edx, DWORD PTR -8[rbp]
	sub	eax, edx
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rsi, -16[rbp]
	lea	rcx, -12[rbp]
	lea	rdx, -8[rbp]
	lea	rax, -4[rbp]
	mov	r8, rsi
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -4[rbp]
	test	eax, eax
	jne	.L3
	mov	eax, DWORD PTR -8[rbp]
	test	eax, eax
	jne	.L3
	mov	eax, DWORD PTR -12[rbp]
	test	eax, eax
	jne	.L3
	mov	eax, DWORD PTR -16[rbp]
	test	eax, eax
	jne	.L3
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: