s:
ans:
pos:
sign:
q:
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -8[rbp], 0
	jmp	.L2
	mov	edx, 120
	mov	esi, 0
	lea	rax, pos[rip]
	mov	rdi, rax
	call	memset@PLT
	mov	edx, 120
	mov	esi, 0
	lea	rax, sign[rip]
	mov	rdi, rax
	call	memset@PLT
	lea	rdx, -24[rbp]
	lea	rax, -20[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -12[rbp], 1
	jmp	.L3
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	lea	rdx, s[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jle	.L4
	mov	DWORD PTR -12[rbp], 0
	jmp	.L5
	lea	rdx, -32[rbp]
	lea	rax, -28[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	edx, DWORD PTR -28[rbp]
	mov	eax, DWORD PTR -32[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, pos[rip]
	mov	DWORD PTR [rcx+rdx], eax
	mov	eax, DWORD PTR -32[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, sign[rip]
	mov	DWORD PTR [rdx+rax], 1
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -24[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jl	.L6
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -12[rbp], 1
	jmp	.L7
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, sign[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	jne	.L8
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -4[rbp], edx
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rdx, q[rip]
	mov	eax, DWORD PTR -12[rbp]
	mov	DWORD PTR [rcx+rdx], eax
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jle	.L9
	mov	DWORD PTR -4[rbp], 0
	mov	DWORD PTR -12[rbp], 1
	jmp	.L10
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, pos[rip]
	mov	eax, DWORD PTR [rdx+rax]
	test	eax, eax
	jne	.L11
	mov	eax, DWORD PTR -4[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -4[rbp], edx
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, q[rip]
	mov	eax, DWORD PTR [rdx+rax]
	mov	edx, DWORD PTR -12[rbp]
	movsx	rdx, edx
	lea	rcx, 0[0+rdx*4]
	lea	rdx, pos[rip]
	mov	DWORD PTR [rcx+rdx], eax
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jle	.L12
	mov	DWORD PTR -12[rbp], 1
	jmp	.L13
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	lea	rdx, s[rip]
	add	rdx, rax
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	lea	rcx, 0[0+rax*4]
	lea	rax, pos[rip]
	mov	eax, DWORD PTR [rcx+rax]
	movsx	rcx, eax
	mov	rax, rcx
	sal	rax, 2
	add	rax, rcx
	lea	rcx, 0[0+rax*4]
	add	rax, rcx
	sal	rax, 2
	lea	rcx, ans[rip]
	add	rax, rcx
	mov	rsi, rdx
	mov	rdi, rax
	call	strcpy@PLT
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jle	.L14
	mov	DWORD PTR -12[rbp], 1
	jmp	.L15
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	lea	rdx, 0[0+rax*4]
	add	rax, rdx
	sal	rax, 2
	lea	rdx, ans[rip]
	add	rax, rdx
	mov	rsi, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -12[rbp], 1
	mov	eax, DWORD PTR -20[rbp]
	cmp	DWORD PTR -12[rbp], eax
	jle	.L16
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -8[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -8[rbp], eax
	jl	.L17
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: