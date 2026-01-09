_Z3gcdii:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	mov	eax, DWORD PTR -20[rbp]
	cmp	eax, DWORD PTR -24[rbp]
	jge	.L3
	mov	eax, DWORD PTR -20[rbp]
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -24[rbp], eax
	jmp	.L3
	mov	eax, DWORD PTR -20[rbp]
	cdq
	idiv	DWORD PTR -24[rbp]
	mov	DWORD PTR -4[rbp], edx
	mov	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -24[rbp], eax
	cmp	DWORD PTR -24[rbp], 0
	jne	.L4
	mov	eax, DWORD PTR -20[rbp]
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	mov	DWORD PTR -36[rbp], edi
	mov	QWORD PTR -48[rbp], rsi
	jmp	.L7
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -28[rbp]
	imul	eax, edx
	mov	DWORD PTR -8[rbp], eax
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -20[rbp]
	imul	eax, edx
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	add	DWORD PTR -8[rbp], eax
	mov	edx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -28[rbp]
	imul	eax, edx
	mov	DWORD PTR -12[rbp], eax
	cmp	DWORD PTR -8[rbp], 0
	jne	.L8
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L7
	cmp	DWORD PTR -8[rbp], 0
	jns	.L9
	mov	eax, DWORD PTR -8[rbp]
	neg	eax
	mov	edx, eax
	mov	eax, DWORD PTR -12[rbp]
	mov	esi, eax
	mov	edi, edx
	call	_Z3gcdii
	mov	DWORD PTR -4[rbp], eax
	jmp	.L10
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, edx
	mov	edi, eax
	call	_Z3gcdii
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -4[rbp]
	jne	.L11
	mov	eax, DWORD PTR -8[rbp]
	cdq
	idiv	DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L7
	mov	eax, DWORD PTR -12[rbp]
	cdq
	idiv	DWORD PTR -4[rbp]
	mov	ecx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdq
	idiv	DWORD PTR -4[rbp]
	mov	edx, ecx
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rsi, -28[rbp]
	lea	rcx, -24[rbp]
	lea	rdx, -20[rbp]
	lea	rax, -16[rbp]
	mov	r8, rsi
	mov	rsi, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	cmp	eax, -1
	setne	al
	test	al, al
	jne	.L12
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: