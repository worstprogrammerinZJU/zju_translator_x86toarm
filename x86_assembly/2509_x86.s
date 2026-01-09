main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	jmp	.L2
	mov	eax, DWORD PTR -8[rbp]
	mov	DWORD PTR -4[rbp], eax
	jmp	.L3
	mov	eax, DWORD PTR -8[rbp]
	mov	ecx, DWORD PTR -12[rbp]
	cdq
	idiv	ecx
	add	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -8[rbp]
	mov	edi, DWORD PTR -12[rbp]
	cdq
	idiv	edi
	mov	esi, eax
	mov	eax, DWORD PTR -8[rbp]
	mov	ecx, DWORD PTR -12[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	add	eax, esi
	mov	DWORD PTR -8[rbp], eax
	mov	edx, DWORD PTR -8[rbp]
	mov	eax, DWORD PTR -12[rbp]
	cmp	edx, eax
	jge	.L4
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rdx, -12[rbp]
	lea	rax, -8[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	jne	.L5
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: