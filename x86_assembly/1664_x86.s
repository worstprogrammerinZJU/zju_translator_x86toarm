main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 512
	lea	rdx, -512[rbp]
	mov	eax, 0
	mov	ecx, 60
	mov	rdi, rdx
	rep stosq
	mov	rdx, rdi
	mov	DWORD PTR [rdx], eax
	add	rdx, 4
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	DWORD PTR -512[rbp+rax*4], 1
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rbp
	sub	rax, 512
	mov	DWORD PTR [rax], 1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	add	rax, 11
	mov	DWORD PTR -512[rbp+rax*4], 1
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 2
	add	rax, rbp
	sub	rax, 508
	mov	DWORD PTR [rax], 1
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 10
	jle	.L3
	mov	DWORD PTR -4[rbp], 2
	jmp	.L4
	mov	DWORD PTR -8[rbp], 2
	jmp	.L5
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -4[rbp]
	jle	.L6
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	sal	rax, 4
	add	rax, rbp
	sub	rax, 512
	mov	ecx, DWORD PTR [rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rdx
	add	rax, rsi
	mov	DWORD PTR -512[rbp+rax*4], ecx
	jmp	.L7
	mov	eax, DWORD PTR -8[rbp]
	sub	eax, 1
	movsx	rcx, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rdx
	add	rax, rcx
	mov	ecx, DWORD PTR -512[rbp+rax*4]
	mov	eax, DWORD PTR -4[rbp]
	sub	eax, DWORD PTR -8[rbp]
	mov	edx, DWORD PTR -8[rbp]
	movsx	rsi, edx
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rdx
	add	rax, rsi
	mov	eax, DWORD PTR -512[rbp+rax*4]
	add	ecx, eax
	mov	eax, DWORD PTR -8[rbp]
	movsx	rsi, eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rdx
	add	rax, rsi
	mov	DWORD PTR -512[rbp+rax*4], ecx
	add	DWORD PTR -8[rbp], 1
	cmp	DWORD PTR -8[rbp], 10
	jle	.L8
	add	DWORD PTR -4[rbp], 1
	cmp	DWORD PTR -4[rbp], 10
	jle	.L9
	lea	rax, -12[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -4[rbp], 0
	jmp	.L10
	lea	rdx, -20[rbp]
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -16[rbp]
	mov	edx, DWORD PTR -20[rbp]
	movsx	rcx, edx
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 2
	add	rax, rdx
	add	rax, rax
	add	rax, rdx
	add	rax, rcx
	mov	eax, DWORD PTR -512[rbp+rax*4]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -12[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L11
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: