n:
k:
len:
cmp:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	rax, QWORD PTR -24[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -4[rbp], eax
	mov	rax, QWORD PTR -32[rbp]
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jge	.L2
	mov	eax, -1
	jmp	.L3
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jle	.L4
	mov	eax, 1
	jmp	.L3
	mov	eax, 0
	pop	rbp
	ret
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 224
	mov	DWORD PTR -4[rbp], 1
	jmp	.L6
	mov	DWORD PTR -8[rbp], 0
	jmp	.L7
	lea	rax, -224[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	lea	rax, -224[rbp]
	mov	rdi, rax
	call	strlen@PLT
	mov	ecx, eax
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, len[rip]
	mov	DWORD PTR [rdx+rax], ecx
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR n[rip]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L8
	mov	eax, DWORD PTR n[rip]
	cdqe
	lea	rdx, cmp[rip]
	mov	rcx, rdx
	mov	edx, 4
	mov	rsi, rax
	lea	rax, len[rip]
	mov	rdi, rax
	call	qsort@PLT
	mov	eax, DWORD PTR n[rip]
	mov	esi, DWORD PTR k[rip]
	cdq
	idiv	esi
	mov	DWORD PTR -20[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -4[rbp], edx
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L9
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -16[rbp], 0
	jmp	.L10
	mov	eax, DWORD PTR k[rip]
	imul	eax, DWORD PTR -8[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -12[rbp]
	add	eax, edx
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, len[rip]
	mov	eax, DWORD PTR [rdx+rax]
	add	DWORD PTR -16[rbp], eax
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR k[rip]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L11
	mov	ecx, DWORD PTR k[rip]
	mov	eax, DWORD PTR -16[rbp]
	cdq
	idiv	ecx
	mov	DWORD PTR -16[rbp], eax
	mov	DWORD PTR -12[rbp], 0
	jmp	.L12
	mov	eax, DWORD PTR k[rip]
	imul	eax, DWORD PTR -8[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -12[rbp]
	add	eax, edx
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, len[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -16[rbp]
	add	edx, 2
	cmp	eax, edx
	jg	.L13
	mov	eax, DWORD PTR -16[rbp]
	lea	ecx, -2[rax]
	mov	eax, DWORD PTR k[rip]
	imul	eax, DWORD PTR -8[rbp]
	mov	edx, eax
	mov	eax, DWORD PTR -12[rbp]
	add	eax, edx
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, len[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cmp	ecx, eax
	jg	.L13
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR k[rip]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L14
	mov	eax, DWORD PTR k[rip]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L24
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jl	.L17
	jmp	.L16
	nop
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -20[rbp]
	jge	.L18
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	jmp	.L6
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, k[rip]
	mov	rdx, rax
	lea	rax, n[rip]
	mov	rsi, rax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR n[rip]
	test	eax, eax
	jne	.L19
	mov	eax, DWORD PTR k[rip]
	test	eax, eax
	je	.L20
	mov	eax, 1
	jmp	.L21
	mov	eax, 0
	test	eax, eax
	jne	.L22
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: