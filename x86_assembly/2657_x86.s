main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 4048
	lea	rdx, -4048[rbp]
	mov	eax, 0
	mov	ecx, 500
	mov	rdi, rdx
	rep stosq
	lea	rcx, -32[rbp]
	lea	rdx, -36[rbp]
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	lea	rax, -24[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	DWORD PTR -4048[rbp+rax*4], edx
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -32[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L3
	mov	DWORD PTR -4[rbp], 1
	jmp	.L4
	mov	DWORD PTR -24[rbp], 0
	jmp	.L5
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -28[rbp]
	imul	eax, edx
	mov	DWORD PTR -16[rbp], eax
	mov	edx, DWORD PTR -36[rbp]
	mov	eax, DWORD PTR -16[rbp]
	add	eax, edx
	sub	eax, 1
	cdq
	idiv	DWORD PTR -4[rbp]
	mov	eax, edx
	test	eax, eax
	jne	.L24
	mov	DWORD PTR -12[rbp], 0
	jmp	.L8
	mov	eax, DWORD PTR -28[rbp]
	mov	edx, DWORD PTR -12[rbp]
	imul	eax, edx
	mov	DWORD PTR -20[rbp], eax
	mov	DWORD PTR -8[rbp], 0
	jmp	.L9
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	edx, DWORD PTR -4048[rbp+rax*4]
	mov	eax, DWORD PTR -20[rbp]
	add	eax, edx
	sub	eax, 1
	cdq
	idiv	DWORD PTR -4[rbp]
	mov	eax, edx
	test	eax, eax
	je	.L25
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -32[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L12
	jmp	.L11
	nop
	mov	eax, DWORD PTR -32[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L26
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L15
	jmp	.L14
	nop
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jne	.L7
	mov	DWORD PTR -8[rbp], 0
	jmp	.L16
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	edx, DWORD PTR -4048[rbp+rax*4]
	mov	eax, DWORD PTR -36[rbp]
	cmp	edx, eax
	jge	.L17
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	edx, DWORD PTR -4048[rbp+rax*4]
	mov	eax, DWORD PTR -16[rbp]
	add	eax, edx
	sub	eax, 1
	cdq
	idiv	DWORD PTR -4[rbp]
	mov	eax, edx
	test	eax, eax
	je	.L27
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -32[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L19
	jmp	.L18
	nop
	mov	eax, DWORD PTR -32[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jne	.L7
	mov	eax, DWORD PTR -4[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	jmp	.L23
	nop
	mov	eax, DWORD PTR -24[rbp]
	add	eax, 1
	mov	DWORD PTR -24[rbp], eax
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jg	.L21
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -36[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L22
	mov	eax, 0
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 1
	jne	.L30
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L30
	lea	rax, _ZStL8__ioinit[rip]
	mov	rdi, rax
	mov	rdx, rax
	lea	rax, _ZStL8__ioinit[rip]
	mov	rsi, rax
	mov	rdi, rax
	call	__cxa_atexit@PLT
	nop
	leave
	ret
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	esi, 65535
	mov	edi, 1
	pop	rbp
	ret
0:
1:
2:
3:
4: