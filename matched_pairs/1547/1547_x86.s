main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 160
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L2
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -12[rbp], 0
	mov	DWORD PTR -4[rbp], 0
	jmp	.L3
	lea	rcx, -160[rbp]
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 3
	add	rax, rdx
	add	rcx, rax
	lea	rdx, -64[rbp]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	sal	rax, 2
	lea	rsi, [rdx+rax]
	lea	rdx, -24[rbp]
	lea	rax, -20[rbp]
	mov	r8, rcx
	mov	rcx, rdx
	mov	rdx, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	edx, DWORD PTR -64[rbp+rax*4]
	mov	ecx, DWORD PTR -20[rbp]
	mov	eax, DWORD PTR -24[rbp]
	imul	eax, ecx
	imul	edx, eax
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	DWORD PTR -64[rbp+rax*4], edx
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	edx, DWORD PTR -64[rbp+rax*4]
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	mov	eax, DWORD PTR -64[rbp+rax*4]
	cmp	edx, eax
	jle	.L4
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -8[rbp], eax
	jmp	.L5
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	mov	edx, DWORD PTR -64[rbp+rax*4]
	mov	eax, DWORD PTR -12[rbp]
	cdqe
	mov	eax, DWORD PTR -64[rbp+rax*4]
	cmp	edx, eax
	jge	.L5
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR -12[rbp], eax
	add	DWORD PTR -4[rbp], 1
	mov	eax, DWORD PTR -16[rbp]
	cmp	DWORD PTR -4[rbp], eax
	jl	.L6
	lea	rcx, -160[rbp]
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 3
	add	rax, rdx
	lea	rdx, [rcx+rax]
	lea	rsi, -160[rbp]
	mov	eax, DWORD PTR -8[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	sal	rax, 3
	add	rax, rcx
	add	rax, rsi
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -16[rbp]
	cmp	eax, -1
	jne	.L7
	mov	eax, 0
	leave
	ret
0:
1:
2:
3:
4: